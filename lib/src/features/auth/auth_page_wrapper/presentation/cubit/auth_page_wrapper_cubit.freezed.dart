// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_wrapper_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthPageWrapperState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function(String phoneNumber) otp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function(String phoneNumber)? otp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function(String phoneNumber)? otp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPageState value) login,
    required TResult Function(ShowRegisterPageState value) register,
    required TResult Function(OtpState value) otp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPageState value)? login,
    TResult? Function(ShowRegisterPageState value)? register,
    TResult? Function(OtpState value)? otp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPageState value)? login,
    TResult Function(ShowRegisterPageState value)? register,
    TResult Function(OtpState value)? otp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageWrapperStateCopyWith<$Res> {
  factory $AuthPageWrapperStateCopyWith(AuthPageWrapperState value,
          $Res Function(AuthPageWrapperState) then) =
      _$AuthPageWrapperStateCopyWithImpl<$Res, AuthPageWrapperState>;
}

/// @nodoc
class _$AuthPageWrapperStateCopyWithImpl<$Res,
        $Val extends AuthPageWrapperState>
    implements $AuthPageWrapperStateCopyWith<$Res> {
  _$AuthPageWrapperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthPageWrapperState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowLoginPageStateImplCopyWith<$Res> {
  factory _$$ShowLoginPageStateImplCopyWith(_$ShowLoginPageStateImpl value,
          $Res Function(_$ShowLoginPageStateImpl) then) =
      __$$ShowLoginPageStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoginPageStateImplCopyWithImpl<$Res>
    extends _$AuthPageWrapperStateCopyWithImpl<$Res, _$ShowLoginPageStateImpl>
    implements _$$ShowLoginPageStateImplCopyWith<$Res> {
  __$$ShowLoginPageStateImplCopyWithImpl(_$ShowLoginPageStateImpl _value,
      $Res Function(_$ShowLoginPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthPageWrapperState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowLoginPageStateImpl
    with DiagnosticableTreeMixin
    implements ShowLoginPageState {
  const _$ShowLoginPageStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthPageWrapperState.login()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthPageWrapperState.login'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoginPageStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function(String phoneNumber) otp,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function(String phoneNumber)? otp,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function(String phoneNumber)? otp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPageState value) login,
    required TResult Function(ShowRegisterPageState value) register,
    required TResult Function(OtpState value) otp,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPageState value)? login,
    TResult? Function(ShowRegisterPageState value)? register,
    TResult? Function(OtpState value)? otp,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPageState value)? login,
    TResult Function(ShowRegisterPageState value)? register,
    TResult Function(OtpState value)? otp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class ShowLoginPageState implements AuthPageWrapperState {
  const factory ShowLoginPageState() = _$ShowLoginPageStateImpl;
}

/// @nodoc
abstract class _$$ShowRegisterPageStateImplCopyWith<$Res> {
  factory _$$ShowRegisterPageStateImplCopyWith(
          _$ShowRegisterPageStateImpl value,
          $Res Function(_$ShowRegisterPageStateImpl) then) =
      __$$ShowRegisterPageStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowRegisterPageStateImplCopyWithImpl<$Res>
    extends _$AuthPageWrapperStateCopyWithImpl<$Res,
        _$ShowRegisterPageStateImpl>
    implements _$$ShowRegisterPageStateImplCopyWith<$Res> {
  __$$ShowRegisterPageStateImplCopyWithImpl(_$ShowRegisterPageStateImpl _value,
      $Res Function(_$ShowRegisterPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthPageWrapperState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowRegisterPageStateImpl
    with DiagnosticableTreeMixin
    implements ShowRegisterPageState {
  const _$ShowRegisterPageStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthPageWrapperState.register()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthPageWrapperState.register'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowRegisterPageStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function(String phoneNumber) otp,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function(String phoneNumber)? otp,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function(String phoneNumber)? otp,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPageState value) login,
    required TResult Function(ShowRegisterPageState value) register,
    required TResult Function(OtpState value) otp,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPageState value)? login,
    TResult? Function(ShowRegisterPageState value)? register,
    TResult? Function(OtpState value)? otp,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPageState value)? login,
    TResult Function(ShowRegisterPageState value)? register,
    TResult Function(OtpState value)? otp,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class ShowRegisterPageState implements AuthPageWrapperState {
  const factory ShowRegisterPageState() = _$ShowRegisterPageStateImpl;
}

/// @nodoc
abstract class _$$OtpStateImplCopyWith<$Res> {
  factory _$$OtpStateImplCopyWith(
          _$OtpStateImpl value, $Res Function(_$OtpStateImpl) then) =
      __$$OtpStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$OtpStateImplCopyWithImpl<$Res>
    extends _$AuthPageWrapperStateCopyWithImpl<$Res, _$OtpStateImpl>
    implements _$$OtpStateImplCopyWith<$Res> {
  __$$OtpStateImplCopyWithImpl(
      _$OtpStateImpl _value, $Res Function(_$OtpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthPageWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$OtpStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpStateImpl with DiagnosticableTreeMixin implements OtpState {
  const _$OtpStateImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthPageWrapperState.otp(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthPageWrapperState.otp'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AuthPageWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      __$$OtpStateImplCopyWithImpl<_$OtpStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() register,
    required TResult Function(String phoneNumber) otp,
  }) {
    return otp(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? register,
    TResult? Function(String phoneNumber)? otp,
  }) {
    return otp?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? register,
    TResult Function(String phoneNumber)? otp,
    required TResult orElse(),
  }) {
    if (otp != null) {
      return otp(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPageState value) login,
    required TResult Function(ShowRegisterPageState value) register,
    required TResult Function(OtpState value) otp,
  }) {
    return otp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPageState value)? login,
    TResult? Function(ShowRegisterPageState value)? register,
    TResult? Function(OtpState value)? otp,
  }) {
    return otp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPageState value)? login,
    TResult Function(ShowRegisterPageState value)? register,
    TResult Function(OtpState value)? otp,
    required TResult orElse(),
  }) {
    if (otp != null) {
      return otp(this);
    }
    return orElse();
  }
}

abstract class OtpState implements AuthPageWrapperState {
  const factory OtpState({required final String phoneNumber}) = _$OtpStateImpl;

  String get phoneNumber;

  /// Create a copy of AuthPageWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
