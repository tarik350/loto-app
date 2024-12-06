import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<int> {
  final int initialIndex;
  AppCubit(this.initialIndex) : super(initialIndex);
  void switchTab(int value) {
    emit(value);
  }
}
