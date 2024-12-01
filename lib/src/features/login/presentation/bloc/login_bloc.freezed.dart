// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitLogin,
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function(String password) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitLogin,
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function(String password)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitLogin,
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(UpdatePhoneNumber value) updatePhone,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(UpdatePassword value) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(UpdatePhoneNumber value)? updatePhone,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(UpdatePhoneNumber value)? updatePhone,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitLoginImplCopyWith<$Res> {
  factory _$$SubmitLoginImplCopyWith(
          _$SubmitLoginImpl value, $Res Function(_$SubmitLoginImpl) then) =
      __$$SubmitLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitLoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SubmitLoginImpl>
    implements _$$SubmitLoginImplCopyWith<$Res> {
  __$$SubmitLoginImplCopyWithImpl(
      _$SubmitLoginImpl _value, $Res Function(_$SubmitLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitLoginImpl with DiagnosticableTreeMixin implements SubmitLogin {
  const _$SubmitLoginImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.submitLogin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginEvent.submitLogin'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitLogin,
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function(String password) updatePassword,
  }) {
    return submitLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitLogin,
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function(String password)? updatePassword,
  }) {
    return submitLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitLogin,
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (submitLogin != null) {
      return submitLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(UpdatePhoneNumber value) updatePhone,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return submitLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(UpdatePhoneNumber value)? updatePhone,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return submitLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(UpdatePhoneNumber value)? updatePhone,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (submitLogin != null) {
      return submitLogin(this);
    }
    return orElse();
  }
}

abstract class SubmitLogin implements LoginEvent {
  const factory SubmitLogin() = _$SubmitLoginImpl;
}

/// @nodoc
abstract class _$$UpdatePhoneNumberImplCopyWith<$Res> {
  factory _$$UpdatePhoneNumberImplCopyWith(_$UpdatePhoneNumberImpl value,
          $Res Function(_$UpdatePhoneNumberImpl) then) =
      __$$UpdatePhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$UpdatePhoneNumberImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UpdatePhoneNumberImpl>
    implements _$$UpdatePhoneNumberImplCopyWith<$Res> {
  __$$UpdatePhoneNumberImplCopyWithImpl(_$UpdatePhoneNumberImpl _value,
      $Res Function(_$UpdatePhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$UpdatePhoneNumberImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePhoneNumberImpl
    with DiagnosticableTreeMixin
    implements UpdatePhoneNumber {
  const _$UpdatePhoneNumberImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.updatePhone(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.updatePhone'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhoneNumberImplCopyWith<_$UpdatePhoneNumberImpl> get copyWith =>
      __$$UpdatePhoneNumberImplCopyWithImpl<_$UpdatePhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitLogin,
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function(String password) updatePassword,
  }) {
    return updatePhone(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitLogin,
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function(String password)? updatePassword,
  }) {
    return updatePhone?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitLogin,
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(UpdatePhoneNumber value) updatePhone,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return updatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(UpdatePhoneNumber value)? updatePhone,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return updatePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(UpdatePhoneNumber value)? updatePhone,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(this);
    }
    return orElse();
  }
}

abstract class UpdatePhoneNumber implements LoginEvent {
  const factory UpdatePhoneNumber({required final String phoneNumber}) =
      _$UpdatePhoneNumberImpl;

  String get phoneNumber;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePhoneNumberImplCopyWith<_$UpdatePhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAutovalidateModeImplCopyWith<$Res> {
  factory _$$UpdateAutovalidateModeImplCopyWith(
          _$UpdateAutovalidateModeImpl value,
          $Res Function(_$UpdateAutovalidateModeImpl) then) =
      __$$UpdateAutovalidateModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AutovalidateMode autovalidateMode});
}

/// @nodoc
class __$$UpdateAutovalidateModeImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UpdateAutovalidateModeImpl>
    implements _$$UpdateAutovalidateModeImplCopyWith<$Res> {
  __$$UpdateAutovalidateModeImplCopyWithImpl(
      _$UpdateAutovalidateModeImpl _value,
      $Res Function(_$UpdateAutovalidateModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autovalidateMode = null,
  }) {
    return _then(_$UpdateAutovalidateModeImpl(
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
    ));
  }
}

/// @nodoc

class _$UpdateAutovalidateModeImpl
    with DiagnosticableTreeMixin
    implements UpdateAutovalidateMode {
  const _$UpdateAutovalidateModeImpl({required this.autovalidateMode});

  @override
  final AutovalidateMode autovalidateMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.updateAutovalidateMode(autovalidateMode: $autovalidateMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.updateAutovalidateMode'))
      ..add(DiagnosticsProperty('autovalidateMode', autovalidateMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAutovalidateModeImpl &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, autovalidateMode);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAutovalidateModeImplCopyWith<_$UpdateAutovalidateModeImpl>
      get copyWith => __$$UpdateAutovalidateModeImplCopyWithImpl<
          _$UpdateAutovalidateModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitLogin,
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function(String password) updatePassword,
  }) {
    return updateAutovalidateMode(autovalidateMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitLogin,
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function(String password)? updatePassword,
  }) {
    return updateAutovalidateMode?.call(autovalidateMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitLogin,
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (updateAutovalidateMode != null) {
      return updateAutovalidateMode(autovalidateMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(UpdatePhoneNumber value) updatePhone,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return updateAutovalidateMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(UpdatePhoneNumber value)? updatePhone,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return updateAutovalidateMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(UpdatePhoneNumber value)? updatePhone,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updateAutovalidateMode != null) {
      return updateAutovalidateMode(this);
    }
    return orElse();
  }
}

abstract class UpdateAutovalidateMode implements LoginEvent {
  const factory UpdateAutovalidateMode(
          {required final AutovalidateMode autovalidateMode}) =
      _$UpdateAutovalidateModeImpl;

  AutovalidateMode get autovalidateMode;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAutovalidateModeImplCopyWith<_$UpdateAutovalidateModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetFormImplCopyWith<$Res> {
  factory _$$ResetFormImplCopyWith(
          _$ResetFormImpl value, $Res Function(_$ResetFormImpl) then) =
      __$$ResetFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetFormImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ResetFormImpl>
    implements _$$ResetFormImplCopyWith<$Res> {
  __$$ResetFormImplCopyWithImpl(
      _$ResetFormImpl _value, $Res Function(_$ResetFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetFormImpl with DiagnosticableTreeMixin implements ResetForm {
  const _$ResetFormImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.resetForm()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginEvent.resetForm'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitLogin,
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function(String password) updatePassword,
  }) {
    return resetForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitLogin,
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function(String password)? updatePassword,
  }) {
    return resetForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitLogin,
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (resetForm != null) {
      return resetForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(UpdatePhoneNumber value) updatePhone,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return resetForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(UpdatePhoneNumber value)? updatePhone,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return resetForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(UpdatePhoneNumber value)? updatePhone,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (resetForm != null) {
      return resetForm(this);
    }
    return orElse();
  }
}

abstract class ResetForm implements LoginEvent {
  const factory ResetForm() = _$ResetFormImpl;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$UpdatePasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordImpl
    with DiagnosticableTreeMixin
    implements UpdatePassword {
  const _$UpdatePasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.updatePassword(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.updatePassword'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      __$$UpdatePasswordImplCopyWithImpl<_$UpdatePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitLogin,
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function(String password) updatePassword,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitLogin,
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function(String password)? updatePassword,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitLogin,
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(UpdatePhoneNumber value) updatePhone,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(UpdatePassword value) updatePassword,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(UpdatePhoneNumber value)? updatePhone,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(UpdatePassword value)? updatePassword,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(UpdatePhoneNumber value)? updatePhone,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class UpdatePassword implements LoginEvent {
  const factory UpdatePassword({required final String password}) =
      _$UpdatePasswordImpl;

  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;
  FormSubmissionStatus get formSubmissionStatus =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String password,
      AutovalidateMode autovalidateMode,
      FormSubmissionStatus formSubmissionStatus,
      String? errorMessage,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? autovalidateMode = null,
    Object? formSubmissionStatus = null,
    Object? errorMessage = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String password,
      AutovalidateMode autovalidateMode,
      FormSubmissionStatus formSubmissionStatus,
      String? errorMessage,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? autovalidateMode = null,
    Object? formSubmissionStatus = null,
    Object? errorMessage = freezed,
    Object? user = freezed,
  }) {
    return _then(_$LoginStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl with DiagnosticableTreeMixin implements _LoginState {
  const _$LoginStateImpl(
      {this.phoneNumber = '',
      this.password = '',
      this.autovalidateMode = AutovalidateMode.disabled,
      this.formSubmissionStatus = FormSubmissionStatus.initial,
      this.errorMessage = null,
      this.user = null});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final AutovalidateMode autovalidateMode;
  @override
  @JsonKey()
  final FormSubmissionStatus formSubmissionStatus;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(phoneNumber: $phoneNumber, password: $password, autovalidateMode: $autovalidateMode, formSubmissionStatus: $formSubmissionStatus, errorMessage: $errorMessage, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('autovalidateMode', autovalidateMode))
      ..add(DiagnosticsProperty('formSubmissionStatus', formSubmissionStatus))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            (identical(other.formSubmissionStatus, formSubmissionStatus) ||
                other.formSubmissionStatus == formSubmissionStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, password,
      autovalidateMode, formSubmissionStatus, errorMessage, user);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final String phoneNumber,
      final String password,
      final AutovalidateMode autovalidateMode,
      final FormSubmissionStatus formSubmissionStatus,
      final String? errorMessage,
      final User? user}) = _$LoginStateImpl;

  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  AutovalidateMode get autovalidateMode;
  @override
  FormSubmissionStatus get formSubmissionStatus;
  @override
  String? get errorMessage;
  @override
  User? get user;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
