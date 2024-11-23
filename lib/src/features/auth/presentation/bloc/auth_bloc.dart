import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/features/auth/domain/models/register_request/register_request.dart';
import 'package:mobile_app/src/features/auth/domain/models/user/user.dart';
import 'package:mobile_app/src/features/auth/domain/repository/abstract_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AbstractAuthRepository _authRepository;

  AuthBloc(AbstractAuthRepository authRepo)
      : _authRepository = authRepo,
        super(const AuthState()) {
    on<AuthEvent>((event, emit) => _handleEvent(event, emit));
  }

  Future<void> _handleEvent(AuthEvent event, Emitter<AuthState> emit) async {
    switch (event) {
      case LoginEvent(:final String phone, :final String password):
        await _loginController(phone, password, emit);
        break;
      default:
        emit(const AuthState.error("Unhandled event type."));
    }
  }

  Future<void> _loginController(
      String phone, String password, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final result =
          await _authRepository.login(phone: phone, password: password);
      result.fold(
        (failure) => emit(AuthState.error(failure.message)),
        (user) => emit(AuthState.data(user)),
      );
    } catch (e) {
      emit(AuthState.error("Unexpected error: $e"));
    }
  }
}
