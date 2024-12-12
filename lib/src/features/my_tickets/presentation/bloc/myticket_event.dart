part of 'myticket_bloc.dart';

@freezed
class MyticketEvent with _$MyticketEvent {
  const factory MyticketEvent.started() = _Started;
}