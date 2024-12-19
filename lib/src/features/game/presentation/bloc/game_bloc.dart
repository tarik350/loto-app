import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket.dart';
import 'package:mobile_app/src/features/game/domain/repository/abstract_game_repo.dart';

part 'game_event.dart';
part 'game_state.dart';
part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final AbstractGameRepo _gameRepo;
  GameBloc({required AbstractGameRepo gameRepo})
      : _gameRepo = gameRepo,
        super(const _Initial()) {
    on<GameEvent>((event, emit) => _handleEvents(emit, event));
  }
  _handleEvents(Emitter<GameState> emit, GameEvent event) async {
    switch (event) {
      case FetchGameTickets(:final int gameId):
        await _handleGameTicketFetch(emit, gameId);
        break;
    }
  }

  _handleGameTicketFetch(Emitter<GameState> emit, int gameId) async {
    final result = await _gameRepo.getGameTickets(gameId);
    result.fold((failure) => emit(GameState.errorLoading(failure.message)),
        (tickets) => emit(GameState.ticketLoaded(tickets)));
  }
}
