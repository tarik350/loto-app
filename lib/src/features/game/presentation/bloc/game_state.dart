part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default([]) List<Ticket> tickets,
    @Default([]) List<Ticket> lockedTickets,
    @Default(FetchState.initial) FetchState ticketFetchState,
    @Default(FormSubmissionStatus.initial)
    FormSubmissionStatus ticketPurchaseStatus,
    @Default(TicketLockState()) TicketLockState ticketLockState,
    @Default(TicketUnlockState()) TicketUnlockState ticketUnlockState,
    @Default(null) String? errorMessage,
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
