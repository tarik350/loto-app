part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.selectTab(int tab) = WalletSelectTabEvent;
}
