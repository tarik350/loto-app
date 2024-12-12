part of 'ticket_history_bloc.dart';

@freezed
class TicketHistoryEvent with _$TicketHistoryEvent {
  const factory TicketHistoryEvent.started() = _Started;
}