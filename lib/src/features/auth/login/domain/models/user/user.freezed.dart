// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  @HiveField(1)
  String get fullName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_picture")
  @HiveField(3)
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_verified')
  @HiveField(4)
  bool? get phoneVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @HiveField(5)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @HiveField(6)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_suspended')
  @HiveField(8)
  bool? get isSuspended => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get token => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @JsonKey(name: 'full_name') @HiveField(1) String fullName,
      @HiveField(2) String phone,
      @JsonKey(name: "profile_picture") @HiveField(3) String? profilePicture,
      @JsonKey(name: 'phone_verified') @HiveField(4) bool? phoneVerified,
      @JsonKey(name: 'created_at') @HiveField(5) DateTime createdAt,
      @JsonKey(name: 'updated_at') @HiveField(6) DateTime updatedAt,
      @HiveField(7) int? balance,
      @JsonKey(name: 'is_suspended') @HiveField(8) bool? isSuspended,
      @HiveField(9) String? token,
      @HiveField(10) String? refreshToken});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? profilePicture = freezed,
    Object? phoneVerified = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? balance = freezed,
    Object? isSuspended = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuspended: freezed == isSuspended
          ? _value.isSuspended
          : isSuspended // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @JsonKey(name: 'full_name') @HiveField(1) String fullName,
      @HiveField(2) String phone,
      @JsonKey(name: "profile_picture") @HiveField(3) String? profilePicture,
      @JsonKey(name: 'phone_verified') @HiveField(4) bool? phoneVerified,
      @JsonKey(name: 'created_at') @HiveField(5) DateTime createdAt,
      @JsonKey(name: 'updated_at') @HiveField(6) DateTime updatedAt,
      @HiveField(7) int? balance,
      @JsonKey(name: 'is_suspended') @HiveField(8) bool? isSuspended,
      @HiveField(9) String? token,
      @HiveField(10) String? refreshToken});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? profilePicture = freezed,
    Object? phoneVerified = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? balance = freezed,
    Object? isSuspended = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuspended: freezed == isSuspended
          ? _value.isSuspended
          : isSuspended // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@HiveField(0) required this.id,
      @JsonKey(name: 'full_name') @HiveField(1) required this.fullName,
      @HiveField(2) required this.phone,
      @JsonKey(name: "profile_picture") @HiveField(3) this.profilePicture,
      @JsonKey(name: 'phone_verified') @HiveField(4) this.phoneVerified,
      @JsonKey(name: 'created_at') @HiveField(5) required this.createdAt,
      @JsonKey(name: 'updated_at') @HiveField(6) required this.updatedAt,
      @HiveField(7) this.balance,
      @JsonKey(name: 'is_suspended') @HiveField(8) this.isSuspended,
      @HiveField(9) this.token,
      @HiveField(10) this.refreshToken});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'full_name')
  @HiveField(1)
  final String fullName;
  @override
  @HiveField(2)
  final String phone;
  @override
  @JsonKey(name: "profile_picture")
  @HiveField(3)
  final String? profilePicture;
  @override
  @JsonKey(name: 'phone_verified')
  @HiveField(4)
  final bool? phoneVerified;
  @override
  @JsonKey(name: 'created_at')
  @HiveField(5)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @HiveField(6)
  final DateTime updatedAt;
  @override
  @HiveField(7)
  final int? balance;
  @override
  @JsonKey(name: 'is_suspended')
  @HiveField(8)
  final bool? isSuspended;
  @override
  @HiveField(9)
  final String? token;
  @override
  @HiveField(10)
  final String? refreshToken;

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, phone: $phone, profilePicture: $profilePicture, phoneVerified: $phoneVerified, createdAt: $createdAt, updatedAt: $updatedAt, balance: $balance, isSuspended: $isSuspended, token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.isSuspended, isSuspended) ||
                other.isSuspended == isSuspended) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      phone,
      profilePicture,
      phoneVerified,
      createdAt,
      updatedAt,
      balance,
      isSuspended,
      token,
      refreshToken);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@HiveField(0) required final int id,
      @JsonKey(name: 'full_name') @HiveField(1) required final String fullName,
      @HiveField(2) required final String phone,
      @JsonKey(name: "profile_picture")
      @HiveField(3)
      final String? profilePicture,
      @JsonKey(name: 'phone_verified') @HiveField(4) final bool? phoneVerified,
      @JsonKey(name: 'created_at')
      @HiveField(5)
      required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      @HiveField(6)
      required final DateTime updatedAt,
      @HiveField(7) final int? balance,
      @JsonKey(name: 'is_suspended') @HiveField(8) final bool? isSuspended,
      @HiveField(9) final String? token,
      @HiveField(10) final String? refreshToken}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'full_name')
  @HiveField(1)
  String get fullName;
  @override
  @HiveField(2)
  String get phone;
  @override
  @JsonKey(name: "profile_picture")
  @HiveField(3)
  String? get profilePicture;
  @override
  @JsonKey(name: 'phone_verified')
  @HiveField(4)
  bool? get phoneVerified;
  @override
  @JsonKey(name: 'created_at')
  @HiveField(5)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @HiveField(6)
  DateTime get updatedAt;
  @override
  @HiveField(7)
  int? get balance;
  @override
  @JsonKey(name: 'is_suspended')
  @HiveField(8)
  bool? get isSuspended;
  @override
  @HiveField(9)
  String? get token;
  @override
  @HiveField(10)
  String? get refreshToken;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
