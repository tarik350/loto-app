part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.fetchTickets() = FetchGameTickets;
  const factory GameEvent.updateGameId(int gameId) = UpdateGameId;
  const factory GameEvent.resetState() = ResetGameState;
  const factory GameEvent.lockTicket(Ticket ticket) = LockTicketEvent;
  const factory GameEvent.unlockTicket(Ticket ticket) = UnlockTicketEvent;
  const factory GameEvent.searchTicket(int ticketNumber) = SearchTicketEvent;
  const factory GameEvent.fetchAllLockedUserTickets() =
      FetchAllLockedUserTickets;
  const factory GameEvent.filterTicket(
      {required TicketFilterTypeEnum filterType}) = FilterTicketEvent;
  const factory GameEvent.selectRandomTicket() = SelectRandomTicket;
}
