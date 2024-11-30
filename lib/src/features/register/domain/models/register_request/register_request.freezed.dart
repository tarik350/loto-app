// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterRequestDTO _$RegisterRequestDTOFromJson(Map<String, dynamic> json) {
  return _RegisterRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequestDTO {
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicturePath => throw _privateConstructorUsedError;

  /// Serializes this RegisterRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterRequestDTOCopyWith<RegisterRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestDTOCopyWith<$Res> {
  factory $RegisterRequestDTOCopyWith(
          RegisterRequestDTO value, $Res Function(RegisterRequestDTO) then) =
      _$RegisterRequestDTOCopyWithImpl<$Res, RegisterRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String password,
      @JsonKey(name: 'profile_picture') String? profilePicturePath});
}

/// @nodoc
class _$RegisterRequestDTOCopyWithImpl<$Res, $Val extends RegisterRequestDTO>
    implements $RegisterRequestDTOCopyWith<$Res> {
  _$RegisterRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? profilePicturePath = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterRequestDTOImplCopyWith<$Res>
    implements $RegisterRequestDTOCopyWith<$Res> {
  factory _$$RegisterRequestDTOImplCopyWith(_$RegisterRequestDTOImpl value,
          $Res Function(_$RegisterRequestDTOImpl) then) =
      __$$RegisterRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String password,
      @JsonKey(name: 'profile_picture') String? profilePicturePath});
}

/// @nodoc
class __$$RegisterRequestDTOImplCopyWithImpl<$Res>
    extends _$RegisterRequestDTOCopyWithImpl<$Res, _$RegisterRequestDTOImpl>
    implements _$$RegisterRequestDTOImplCopyWith<$Res> {
  __$$RegisterRequestDTOImplCopyWithImpl(_$RegisterRequestDTOImpl _value,
      $Res Function(_$RegisterRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? profilePicturePath = freezed,
  }) {
    return _then(_$RegisterRequestDTOImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterRequestDTOImpl implements _RegisterRequestDTO {
  const _$RegisterRequestDTOImpl(
      {@JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.password,
      @JsonKey(name: 'profile_picture') this.profilePicturePath});

  factory _$RegisterRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  final String password;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicturePath;

  @override
  String toString() {
    return 'RegisterRequestDTO(fullName: $fullName, phoneNumber: $phoneNumber, password: $password, profilePicturePath: $profilePicturePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestDTOImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.profilePicturePath, profilePicturePath) ||
                other.profilePicturePath == profilePicturePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, phoneNumber, password, profilePicturePath);

  /// Create a copy of RegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestDTOImplCopyWith<_$RegisterRequestDTOImpl> get copyWith =>
      __$$RegisterRequestDTOImplCopyWithImpl<_$RegisterRequestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _RegisterRequestDTO implements RegisterRequestDTO {
  const factory _RegisterRequestDTO(
          {@JsonKey(name: 'full_name') required final String fullName,
          @JsonKey(name: 'phone_number') required final String phoneNumber,
          required final String password,
          @JsonKey(name: 'profile_picture') final String? profilePicturePath}) =
      _$RegisterRequestDTOImpl;

  factory _RegisterRequestDTO.fromJson(Map<String, dynamic> json) =
      _$RegisterRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  String get password;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicturePath;

  /// Create a copy of RegisterRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterRequestDTOImplCopyWith<_$RegisterRequestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
