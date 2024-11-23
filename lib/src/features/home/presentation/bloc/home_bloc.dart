import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/src/features/home/domain/usecases/home_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUsecase usecase;
  HomeBloc(this.usecase) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
  }
}
