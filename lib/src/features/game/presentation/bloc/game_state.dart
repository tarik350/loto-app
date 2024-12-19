part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.ticketLoading() = TicketLoading;
  const factory GameState.errorLoading(String message) = ErrorTicketLoading;
  const factory GameState.ticketLoaded(List<Ticket> tickets) = TicketLoaded;
}
