part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default([]) List<Ticket> tickets,
    @Default([]) List<Ticket> lockedTickets,
    @Default(FetchState.initial) FetchState ticketFetchState,
    @Default(FormSubmissionStatus.initial)
    FormSubmissionStatus ticketPurchaseStatus,
    @Default(FormSubmissionStatus.initial)
    FormSubmissionStatus ticketLockStatus,
    @Default(null) Ticket? ticketPendingForLock,
    @Default(null) String? errorMessage,
  }) = _GameState;
}
