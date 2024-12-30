import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const WalletState()) {
    on<WalletEvent>((event, emit) => _handleEvents(emit, event));
  }

  _handleEvents(Emitter<WalletState> emit, WalletEvent event) {
    switch (event) {
      case WalletSelectTabEvent(:final tab):
        emit(state.copyWith(selectedTab: tab));
    }
  }
}
