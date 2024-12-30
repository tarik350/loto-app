part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({@Default(0) int selectedTab}) = _WalletState;
}
