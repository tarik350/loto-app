import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_history_event.dart';
part 'ticket_history_state.dart';
part 'ticket_history_bloc.freezed.dart';

class TicketHistoryBloc extends Bloc<TicketHistoryEvent, TicketHistoryState> {
  TicketHistoryBloc() : super(const _Initial()) {
    on<TicketHistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
