part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    //filter state
    @Default(0) int quarterSize,
    @Default([]) List<Ticket> tempTickets,
    @Default([]) List<TicketFilterType> ticketFilterType,
    @Default(null) TicketFilterType? selectedFilterType,
    //ticket and game state
    @Default([]) List<Ticket> tickets,
    @Default(null) int? gameId,
    @Default([]) List<Ticket> lockedTickets,
    @Default(FetchState.initial) FetchState ticketFetchState,
    @Default(FetchState.initial) FetchState lockedTicketFetchState,
    @Default(FormSubmissionStatus.initial)
    FormSubmissionStatus ticketPurchaseStatus,
    @Default(TicketLockState()) TicketLockState ticketLockState,
    @Default(TicketUnlockState()) TicketUnlockState ticketUnlockState,
    @Default(null) String? errorMessage,
    @Default(RandomTicketLockState())
    RandomTicketLockState randomTicketLockState,
  }) = _GameState;
}

@freezed
class TicketUnlockState with _$TicketUnlockState {
  const factory TicketUnlockState(
      {@Default(FormSubmissionStatus.initial)
      FormSubmissionStatus formSubmissionStatus,
      @Default(null) Ticket? ticket}) = _TicketUnlockState;
}

@freezed
class TicketLockState with _$TicketLockState {
  const factory TicketLockState(
      {@Default(FormSubmissionStatus.initial)
      FormSubmissionStatus formSubmissionStatus,
      @Default(null) Ticket? ticket}) = _TicketLockState;
}

@freezed
class RandomTicketLockState with _$RandomTicketLockState {
  const factory RandomTicketLockState(
      {@Default(FormSubmissionStatus.initial)
      FormSubmissionStatus formSubmissionStatus,
      @Default(null) Ticket? ticket}) = _RandomTicketLockState;
}
