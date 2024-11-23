part of 'auth_bloc.dart';

@Freezed()
sealed class AuthState with _$AuthState {
  const factory AuthState() = AuthInitState;
  const factory AuthState.loading() = AuthLoadingState;
  const factory AuthState.error(String message) = AuthErrorState;
  const factory AuthState.data(User user) = AuthSuccessState;
}
