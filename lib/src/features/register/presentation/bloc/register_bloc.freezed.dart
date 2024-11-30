// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateRegisterPhoneNumberImplCopyWith<$Res> {
  factory _$$UpdateRegisterPhoneNumberImplCopyWith(
          _$UpdateRegisterPhoneNumberImpl value,
          $Res Function(_$UpdateRegisterPhoneNumberImpl) then) =
      __$$UpdateRegisterPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$UpdateRegisterPhoneNumberImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateRegisterPhoneNumberImpl>
    implements _$$UpdateRegisterPhoneNumberImplCopyWith<$Res> {
  __$$UpdateRegisterPhoneNumberImplCopyWithImpl(
      _$UpdateRegisterPhoneNumberImpl _value,
      $Res Function(_$UpdateRegisterPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$UpdateRegisterPhoneNumberImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateRegisterPhoneNumberImpl implements UpdateRegisterPhoneNumber {
  const _$UpdateRegisterPhoneNumberImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterEvent.updatePhone(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRegisterPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRegisterPhoneNumberImplCopyWith<_$UpdateRegisterPhoneNumberImpl>
      get copyWith => __$$UpdateRegisterPhoneNumberImplCopyWithImpl<
          _$UpdateRegisterPhoneNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) {
    return updatePhone(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) {
    return updatePhone?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
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
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) {
    return updatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) {
    return updatePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(this);
    }
    return orElse();
  }
}

abstract class UpdateRegisterPhoneNumber implements RegisterEvent {
  const factory UpdateRegisterPhoneNumber({required final String phoneNumber}) =
      _$UpdateRegisterPhoneNumberImpl;

  String get phoneNumber;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRegisterPhoneNumberImplCopyWith<_$UpdateRegisterPhoneNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRegisterPasswordImplCopyWith<$Res> {
  factory _$$UpdateRegisterPasswordImplCopyWith(
          _$UpdateRegisterPasswordImpl value,
          $Res Function(_$UpdateRegisterPasswordImpl) then) =
      __$$UpdateRegisterPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UpdateRegisterPasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateRegisterPasswordImpl>
    implements _$$UpdateRegisterPasswordImplCopyWith<$Res> {
  __$$UpdateRegisterPasswordImplCopyWithImpl(
      _$UpdateRegisterPasswordImpl _value,
      $Res Function(_$UpdateRegisterPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$UpdateRegisterPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateRegisterPasswordImpl implements UpdateRegisterPassword {
  const _$UpdateRegisterPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRegisterPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRegisterPasswordImplCopyWith<_$UpdateRegisterPasswordImpl>
      get copyWith => __$$UpdateRegisterPasswordImplCopyWithImpl<
          _$UpdateRegisterPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
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
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class UpdateRegisterPassword implements RegisterEvent {
  const factory UpdateRegisterPassword({required final String password}) =
      _$UpdateRegisterPasswordImpl;

  String get password;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRegisterPasswordImplCopyWith<_$UpdateRegisterPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRegisterFullNameImplCopyWith<$Res> {
  factory _$$UpdateRegisterFullNameImplCopyWith(
          _$UpdateRegisterFullNameImpl value,
          $Res Function(_$UpdateRegisterFullNameImpl) then) =
      __$$UpdateRegisterFullNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$UpdateRegisterFullNameImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateRegisterFullNameImpl>
    implements _$$UpdateRegisterFullNameImplCopyWith<$Res> {
  __$$UpdateRegisterFullNameImplCopyWithImpl(
      _$UpdateRegisterFullNameImpl _value,
      $Res Function(_$UpdateRegisterFullNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$UpdateRegisterFullNameImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateRegisterFullNameImpl implements UpdateRegisterFullName {
  const _$UpdateRegisterFullNameImpl({required this.fullName});

  @override
  final String fullName;

  @override
  String toString() {
    return 'RegisterEvent.updateFullName(fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRegisterFullNameImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRegisterFullNameImplCopyWith<_$UpdateRegisterFullNameImpl>
      get copyWith => __$$UpdateRegisterFullNameImplCopyWithImpl<
          _$UpdateRegisterFullNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) {
    return updateFullName(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) {
    return updateFullName?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (updateFullName != null) {
      return updateFullName(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) {
    return updateFullName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) {
    return updateFullName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (updateFullName != null) {
      return updateFullName(this);
    }
    return orElse();
  }
}

abstract class UpdateRegisterFullName implements RegisterEvent {
  const factory UpdateRegisterFullName({required final String fullName}) =
      _$UpdateRegisterFullNameImpl;

  String get fullName;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRegisterFullNameImplCopyWith<_$UpdateRegisterFullNameImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateAutovalidateModeImpl>
    implements _$$UpdateAutovalidateModeImplCopyWith<$Res> {
  __$$UpdateAutovalidateModeImplCopyWithImpl(
      _$UpdateAutovalidateModeImpl _value,
      $Res Function(_$UpdateAutovalidateModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
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

class _$UpdateAutovalidateModeImpl implements UpdateAutovalidateMode {
  const _$UpdateAutovalidateModeImpl({required this.autovalidateMode});

  @override
  final AutovalidateMode autovalidateMode;

  @override
  String toString() {
    return 'RegisterEvent.updateAutovalidateMode(autovalidateMode: $autovalidateMode)';
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

  /// Create a copy of RegisterEvent
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
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) {
    return updateAutovalidateMode(autovalidateMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) {
    return updateAutovalidateMode?.call(autovalidateMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
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
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) {
    return updateAutovalidateMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) {
    return updateAutovalidateMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (updateAutovalidateMode != null) {
      return updateAutovalidateMode(this);
    }
    return orElse();
  }
}

abstract class UpdateAutovalidateMode implements RegisterEvent {
  const factory UpdateAutovalidateMode(
          {required final AutovalidateMode autovalidateMode}) =
      _$UpdateAutovalidateModeImpl;

  AutovalidateMode get autovalidateMode;

  /// Create a copy of RegisterEvent
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
    extends _$RegisterEventCopyWithImpl<$Res, _$ResetFormImpl>
    implements _$$ResetFormImplCopyWith<$Res> {
  __$$ResetFormImplCopyWithImpl(
      _$ResetFormImpl _value, $Res Function(_$ResetFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetFormImpl implements ResetForm {
  const _$ResetFormImpl();

  @override
  String toString() {
    return 'RegisterEvent.resetForm()';
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
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) {
    return resetForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) {
    return resetForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
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
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) {
    return resetForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) {
    return resetForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (resetForm != null) {
      return resetForm(this);
    }
    return orElse();
  }
}

abstract class ResetForm implements RegisterEvent {
  const factory ResetForm() = _$ResetFormImpl;
}

/// @nodoc
abstract class _$$SubmitRegisterImplCopyWith<$Res> {
  factory _$$SubmitRegisterImplCopyWith(_$SubmitRegisterImpl value,
          $Res Function(_$SubmitRegisterImpl) then) =
      __$$SubmitRegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitRegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SubmitRegisterImpl>
    implements _$$SubmitRegisterImplCopyWith<$Res> {
  __$$SubmitRegisterImplCopyWithImpl(
      _$SubmitRegisterImpl _value, $Res Function(_$SubmitRegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitRegisterImpl implements SubmitRegister {
  const _$SubmitRegisterImpl();

  @override
  String toString() {
    return 'RegisterEvent.submitRegister()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitRegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) {
    return submitRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) {
    return submitRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (submitRegister != null) {
      return submitRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) {
    return submitRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) {
    return submitRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (submitRegister != null) {
      return submitRegister(this);
    }
    return orElse();
  }
}

abstract class SubmitRegister implements RegisterEvent {
  const factory SubmitRegister() = _$SubmitRegisterImpl;
}

/// @nodoc
abstract class _$$UpdateRegisterProfilePictureImplCopyWith<$Res> {
  factory _$$UpdateRegisterProfilePictureImplCopyWith(
          _$UpdateRegisterProfilePictureImpl value,
          $Res Function(_$UpdateRegisterProfilePictureImpl) then) =
      __$$UpdateRegisterProfilePictureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String profilePicturePath});
}

/// @nodoc
class __$$UpdateRegisterProfilePictureImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res,
        _$UpdateRegisterProfilePictureImpl>
    implements _$$UpdateRegisterProfilePictureImplCopyWith<$Res> {
  __$$UpdateRegisterProfilePictureImplCopyWithImpl(
      _$UpdateRegisterProfilePictureImpl _value,
      $Res Function(_$UpdateRegisterProfilePictureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePicturePath = null,
  }) {
    return _then(_$UpdateRegisterProfilePictureImpl(
      profilePicturePath: null == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateRegisterProfilePictureImpl
    implements UpdateRegisterProfilePicture {
  const _$UpdateRegisterProfilePictureImpl({required this.profilePicturePath});

  @override
  final String profilePicturePath;

  @override
  String toString() {
    return 'RegisterEvent.updateProfilePicture(profilePicturePath: $profilePicturePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRegisterProfilePictureImpl &&
            (identical(other.profilePicturePath, profilePicturePath) ||
                other.profilePicturePath == profilePicturePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profilePicturePath);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRegisterProfilePictureImplCopyWith<
          _$UpdateRegisterProfilePictureImpl>
      get copyWith => __$$UpdateRegisterProfilePictureImplCopyWithImpl<
          _$UpdateRegisterProfilePictureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) updatePhone,
    required TResult Function(String password) updatePassword,
    required TResult Function(String fullName) updateFullName,
    required TResult Function(AutovalidateMode autovalidateMode)
        updateAutovalidateMode,
    required TResult Function() resetForm,
    required TResult Function() submitRegister,
    required TResult Function(String profilePicturePath) updateProfilePicture,
  }) {
    return updateProfilePicture(profilePicturePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? updatePhone,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String fullName)? updateFullName,
    TResult? Function(AutovalidateMode autovalidateMode)?
        updateAutovalidateMode,
    TResult? Function()? resetForm,
    TResult? Function()? submitRegister,
    TResult? Function(String profilePicturePath)? updateProfilePicture,
  }) {
    return updateProfilePicture?.call(profilePicturePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? updatePhone,
    TResult Function(String password)? updatePassword,
    TResult Function(String fullName)? updateFullName,
    TResult Function(AutovalidateMode autovalidateMode)? updateAutovalidateMode,
    TResult Function()? resetForm,
    TResult Function()? submitRegister,
    TResult Function(String profilePicturePath)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (updateProfilePicture != null) {
      return updateProfilePicture(profilePicturePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateRegisterPhoneNumber value) updatePhone,
    required TResult Function(UpdateRegisterPassword value) updatePassword,
    required TResult Function(UpdateRegisterFullName value) updateFullName,
    required TResult Function(UpdateAutovalidateMode value)
        updateAutovalidateMode,
    required TResult Function(ResetForm value) resetForm,
    required TResult Function(SubmitRegister value) submitRegister,
    required TResult Function(UpdateRegisterProfilePicture value)
        updateProfilePicture,
  }) {
    return updateProfilePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult? Function(UpdateRegisterPassword value)? updatePassword,
    TResult? Function(UpdateRegisterFullName value)? updateFullName,
    TResult? Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult? Function(ResetForm value)? resetForm,
    TResult? Function(SubmitRegister value)? submitRegister,
    TResult? Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
  }) {
    return updateProfilePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterPhoneNumber value)? updatePhone,
    TResult Function(UpdateRegisterPassword value)? updatePassword,
    TResult Function(UpdateRegisterFullName value)? updateFullName,
    TResult Function(UpdateAutovalidateMode value)? updateAutovalidateMode,
    TResult Function(ResetForm value)? resetForm,
    TResult Function(SubmitRegister value)? submitRegister,
    TResult Function(UpdateRegisterProfilePicture value)? updateProfilePicture,
    required TResult orElse(),
  }) {
    if (updateProfilePicture != null) {
      return updateProfilePicture(this);
    }
    return orElse();
  }
}

abstract class UpdateRegisterProfilePicture implements RegisterEvent {
  const factory UpdateRegisterProfilePicture(
          {required final String profilePicturePath}) =
      _$UpdateRegisterProfilePictureImpl;

  String get profilePicturePath;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRegisterProfilePictureImplCopyWith<
          _$UpdateRegisterProfilePictureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get profilePicturePath => throw _privateConstructorUsedError;
  FormSubmissionStatus get formStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String password,
      String fullName,
      String? profilePicturePath,
      FormSubmissionStatus formStatus,
      String? errorMessage,
      AutovalidateMode autovalidateMode});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? fullName = null,
    Object? profilePicturePath = freezed,
    Object? formStatus = null,
    Object? errorMessage = freezed,
    Object? autovalidateMode = null,
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
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as String?,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String password,
      String fullName,
      String? profilePicturePath,
      FormSubmissionStatus formStatus,
      String? errorMessage,
      AutovalidateMode autovalidateMode});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? fullName = null,
    Object? profilePicturePath = freezed,
    Object? formStatus = null,
    Object? errorMessage = freezed,
    Object? autovalidateMode = null,
  }) {
    return _then(_$RegisterStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as String?,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl(
      {this.phoneNumber = '',
      this.password = '',
      this.fullName = '',
      this.profilePicturePath = null,
      this.formStatus = FormSubmissionStatus.initial,
      this.errorMessage = null,
      this.autovalidateMode = AutovalidateMode.disabled});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String? profilePicturePath;
  @override
  @JsonKey()
  final FormSubmissionStatus formStatus;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final AutovalidateMode autovalidateMode;

  @override
  String toString() {
    return 'RegisterState(phoneNumber: $phoneNumber, password: $password, fullName: $fullName, profilePicturePath: $profilePicturePath, formStatus: $formStatus, errorMessage: $errorMessage, autovalidateMode: $autovalidateMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePicturePath, profilePicturePath) ||
                other.profilePicturePath == profilePicturePath) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, password, fullName,
      profilePicturePath, formStatus, errorMessage, autovalidateMode);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final String phoneNumber,
      final String password,
      final String fullName,
      final String? profilePicturePath,
      final FormSubmissionStatus formStatus,
      final String? errorMessage,
      final AutovalidateMode autovalidateMode}) = _$RegisterStateImpl;

  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  String get fullName;
  @override
  String? get profilePicturePath;
  @override
  FormSubmissionStatus get formStatus;
  @override
  String? get errorMessage;
  @override
  AutovalidateMode get autovalidateMode;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
