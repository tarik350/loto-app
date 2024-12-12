import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'myticket_event.dart';
part 'myticket_state.dart';
part 'myticket_bloc.freezed.dart';

class MyticketBloc extends Bloc<MyticketEvent, MyticketState> {
  MyticketBloc() : super(_Initial()) {
    on<MyticketEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
