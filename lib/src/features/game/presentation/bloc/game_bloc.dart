import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/login/data/data_source/local/abstract_local_login_api.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket_status.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket_filter_type_enum.dart';
import 'package:mobile_app/src/features/game/domain/repository/abstract_game_repo.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final AbstractGameRepo _gameRepo;
  GameBloc({required AbstractGameRepo gameRepo})
      : _gameRepo = gameRepo,
        super(const GameState()) {
    on<GameEvent>((event, emit) => _handleEvents(emit, event));
  }
  _handleEvents(Emitter<GameState> emit, GameEvent event) async {
    switch (event) {
      case FetchGameTickets():
        await _handleGameTicketFetch(emit);
        break;
      case LockTicketEvent(:final ticket):
        await _handleTicketLock(emit, ticket);
        break;
      case ResetGameState():
        emit(state.copyWith(
          tickets: [],
          lockedTickets: [],
        ));
        break;
      case UpdateGameId(:final gameId):
        emit(state.copyWith(gameId: gameId));
        break;
      case FetchAllLockedUserTickets():
        await _fetchAllLockedTicketsForUser(emit);
        break;
      case UnlockTicketEvent(:final ticket):
        await _handleTicketUnlock(emit, ticket);
        break;
      case SelectRandomTicket():
        await _handleSelectRandomTicket(emit);
        break;

      case UpdateSelectedTicketFilterType(:final filterType):
        emit(state.copyWith(selectedFilterType: filterType));
        break;

      case FilterTicketEvent():
        if (state.selectedFilterType == null) {
          return;
        }
        _handleTicketFilter(emit);
        break;
      // case SearchTicketEvent(:final ticketNumber):
      //   break;
    }
  }

  _handleGameTicketFetch(Emitter<GameState> emit) async {
    //todo ideally this should never happen but it is subject to testing

    emit(state.copyWith(
        ticketFetchState: FetchState.loading,
        ticketFilterType: [],
        selectedFilterType: null,
        lockedTicketFetchState: FetchState.loading));
    final result = await _gameRepo.getGameTickets(state.gameId!);
    result.fold((failure) {
      emit(state.copyWith(
          errorMessage: failure.message,
          ticketFetchState: FetchState.error,
          lockedTicketFetchState: FetchState.error));
    }, (tickets) {
      final List<Ticket> allUserLockedTickets =
          sl<AbstractLocalLoginApi>().isUserAuthenticated()
              ? tickets
                  .where((element) =>
                      element.userId ==
                      sl<AbstractLocalLoginApi>().getUserModel()?.id)
                  .toList()
              : [];
      final List<TicketFilterType> filters =
          TicketFilterType.createTicketFilters(tickets.length);
      int quarterSize = (tickets.length / 4).ceil();

      emit(state.copyWith(
          ticketFetchState: FetchState.loaded,
          lockedTicketFetchState: FetchState.loaded,
          tickets: tickets,
          quarterSize: quarterSize,
          ticketFilterType: filters,
          tempTickets: tickets,
          lockedTickets: allUserLockedTickets));
    });
  }

  _handleTicketLock(Emitter<GameState> emit, Ticket ticket) async {
    emit(state.copyWith(
        ticketLockState: state.ticketLockState.copyWith(
            ticket: ticket,
            formSubmissionStatus: FormSubmissionStatus.inProgress)));
    final result = await _gameRepo.aquireLockForTicket(ticket);
    result.fold(
        (failure) => emit(state.copyWith(
            errorMessage: failure.message,
            ticketLockState: state.ticketLockState
                .copyWith(formSubmissionStatus: FormSubmissionStatus.failure))),
        (ticket) {
      emit(state.copyWith(
          lockedTickets: [
            ...state.lockedTickets,
            ticket,
          ],
          ticketLockState: state.ticketLockState
              .copyWith(formSubmissionStatus: FormSubmissionStatus.success)));
    });
  }

  _handleTicketUnlock(Emitter<GameState> emit, Ticket ticket) async {
    emit(state.copyWith(
        ticketUnlockState: state.ticketUnlockState.copyWith(
            formSubmissionStatus: FormSubmissionStatus.inProgress,
            ticket: ticket)));
    final result = await _gameRepo.releaseLockForTicket(ticket);
    result.fold(
        (failure) => emit(state.copyWith(
            ticketUnlockState: state.ticketUnlockState
                .copyWith(formSubmissionStatus: FormSubmissionStatus.failure),
            errorMessage: failure.message)),
        (ticket) => emit(state.copyWith(
              ticketUnlockState: state.ticketUnlockState
                  .copyWith(formSubmissionStatus: FormSubmissionStatus.success),
            )));
  }

  _fetchAllLockedTicketsForUser(Emitter<GameState> emit) async {
    emit(state.copyWith(lockedTicketFetchState: FetchState.loading));
    final result = await _gameRepo.getAllLockedTicket();
    result.fold((failure) {
      emit(state.copyWith(
          errorMessage: failure.message,
          lockedTicketFetchState: FetchState.error));
    }, (tickets) {
      emit(state.copyWith(
          lockedTickets: tickets, lockedTicketFetchState: FetchState.loaded));
    });
    return null;
  }

  _handleSelectRandomTicket(Emitter<GameState> emit) async {
    emit(state.copyWith(
        randomTicketLockState: state.randomTicketLockState
            .copyWith(formSubmissionStatus: FormSubmissionStatus.inProgress)));
    final result = await _gameRepo.getRandomTicketForGame();
    result.fold(
        (failure) => emit(state.copyWith(
            errorMessage: failure.message,
            randomTicketLockState: state.randomTicketLockState
                .copyWith(formSubmissionStatus: FormSubmissionStatus.failure))),
        (ticket) => emit(state.copyWith(
            randomTicketLockState: state.randomTicketLockState.copyWith(
                formSubmissionStatus: FormSubmissionStatus.success,
                ticket: ticket))));
  }

  _handleTicketFilter(Emitter<GameState> emit) {
    List<Ticket> filteredTickets = state.tempTickets;

    switch (state.selectedFilterType?.type) {
      case TicketFilterTypeEnum.locked:
        filteredTickets = state.tempTickets
            .where((ticket) => ticket.status == TicketStatus.locked)
            .toList();
        break;

      case TicketFilterTypeEnum.free:
        filteredTickets = state.tempTickets
            .where((ticket) => ticket.status == TicketStatus.free)
            .toList();
        break;

      case TicketFilterTypeEnum.sold:
        filteredTickets = state.tempTickets
            .where((ticket) => ticket.status == TicketStatus.sold)
            .toList();
        break;

      case TicketFilterTypeEnum.firstQuarter:
        filteredTickets = _filterTicketsByQuarter(1, state.quarterSize);
        break;

      case TicketFilterTypeEnum.secondQuarter:
        filteredTickets = _filterTicketsByQuarter(
            state.quarterSize + 1, 2 * state.quarterSize);
        break;

      case TicketFilterTypeEnum.thirdQuarter:
        filteredTickets = _filterTicketsByQuarter(
            2 * state.quarterSize + 1, 3 * state.quarterSize);
        break;

      case TicketFilterTypeEnum.fourthQuarter:
        filteredTickets = _filterTicketsByQuarter(
            3 * state.quarterSize + 1, state.tempTickets.length);
        break;

      case TicketFilterTypeEnum.all:
        // If "All" is selected, show all tickets
        filteredTickets = state.tempTickets;
        break;

      default:
        // Log or handle unsupported filter type
        emit(state.copyWith(errorMessage: 'Unsupported filter type'));
        return;
    }

    emit(state.copyWith(tickets: filteredTickets));
  }

  /// Helper function to filter tickets by quarter
  List<Ticket> _filterTicketsByQuarter(int start, int end) {
    return state.tempTickets.where((ticket) {
      return ticket.ticketNumber >= start && ticket.ticketNumber <= end;
    }).toList();
  }
}
