// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_ticket_count')
  int? get soldTicketCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_place_winner_id')
  dynamic get firstPlaceWinnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_place_winner_id')
  dynamic get secondPlaceWinnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'third_place_winner_id')
  dynamic get thirdPlaceWinnerId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'winning_video_url')
  String? get winningVideoUrl => throw _privateConstructorUsedError;

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'category_id') int? categoryId,
      String? name,
      @JsonKey(name: 'sold_ticket_count') int? soldTicketCount,
      @JsonKey(name: 'first_place_winner_id') dynamic firstPlaceWinnerId,
      @JsonKey(name: 'second_place_winner_id') dynamic secondPlaceWinnerId,
      @JsonKey(name: 'third_place_winner_id') dynamic thirdPlaceWinnerId,
      String? status,
      @JsonKey(name: 'winning_video_url') String? winningVideoUrl});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? categoryId = freezed,
    Object? name = freezed,
    Object? soldTicketCount = freezed,
    Object? firstPlaceWinnerId = freezed,
    Object? secondPlaceWinnerId = freezed,
    Object? thirdPlaceWinnerId = freezed,
    Object? status = freezed,
    Object? winningVideoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      soldTicketCount: freezed == soldTicketCount
          ? _value.soldTicketCount
          : soldTicketCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstPlaceWinnerId: freezed == firstPlaceWinnerId
          ? _value.firstPlaceWinnerId
          : firstPlaceWinnerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondPlaceWinnerId: freezed == secondPlaceWinnerId
          ? _value.secondPlaceWinnerId
          : secondPlaceWinnerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thirdPlaceWinnerId: freezed == thirdPlaceWinnerId
          ? _value.thirdPlaceWinnerId
          : thirdPlaceWinnerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      winningVideoUrl: freezed == winningVideoUrl
          ? _value.winningVideoUrl
          : winningVideoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'category_id') int? categoryId,
      String? name,
      @JsonKey(name: 'sold_ticket_count') int? soldTicketCount,
      @JsonKey(name: 'first_place_winner_id') dynamic firstPlaceWinnerId,
      @JsonKey(name: 'second_place_winner_id') dynamic secondPlaceWinnerId,
      @JsonKey(name: 'third_place_winner_id') dynamic thirdPlaceWinnerId,
      String? status,
      @JsonKey(name: 'winning_video_url') String? winningVideoUrl});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? categoryId = freezed,
    Object? name = freezed,
    Object? soldTicketCount = freezed,
    Object? firstPlaceWinnerId = freezed,
    Object? secondPlaceWinnerId = freezed,
    Object? thirdPlaceWinnerId = freezed,
    Object? status = freezed,
    Object? winningVideoUrl = freezed,
  }) {
    return _then(_$GameImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      soldTicketCount: freezed == soldTicketCount
          ? _value.soldTicketCount
          : soldTicketCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstPlaceWinnerId: freezed == firstPlaceWinnerId
          ? _value.firstPlaceWinnerId
          : firstPlaceWinnerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondPlaceWinnerId: freezed == secondPlaceWinnerId
          ? _value.secondPlaceWinnerId
          : secondPlaceWinnerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thirdPlaceWinnerId: freezed == thirdPlaceWinnerId
          ? _value.thirdPlaceWinnerId
          : thirdPlaceWinnerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      winningVideoUrl: freezed == winningVideoUrl
          ? _value.winningVideoUrl
          : winningVideoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
      {this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'category_id') this.categoryId,
      this.name,
      @JsonKey(name: 'sold_ticket_count') this.soldTicketCount,
      @JsonKey(name: 'first_place_winner_id') this.firstPlaceWinnerId,
      @JsonKey(name: 'second_place_winner_id') this.secondPlaceWinnerId,
      @JsonKey(name: 'third_place_winner_id') this.thirdPlaceWinnerId,
      this.status,
      @JsonKey(name: 'winning_video_url') this.winningVideoUrl});

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'sold_ticket_count')
  final int? soldTicketCount;
  @override
  @JsonKey(name: 'first_place_winner_id')
  final dynamic firstPlaceWinnerId;
  @override
  @JsonKey(name: 'second_place_winner_id')
  final dynamic secondPlaceWinnerId;
  @override
  @JsonKey(name: 'third_place_winner_id')
  final dynamic thirdPlaceWinnerId;
  @override
  final String? status;
  @override
  @JsonKey(name: 'winning_video_url')
  final String? winningVideoUrl;

  @override
  String toString() {
    return 'Game(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, categoryId: $categoryId, name: $name, soldTicketCount: $soldTicketCount, firstPlaceWinnerId: $firstPlaceWinnerId, secondPlaceWinnerId: $secondPlaceWinnerId, thirdPlaceWinnerId: $thirdPlaceWinnerId, status: $status, winningVideoUrl: $winningVideoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.soldTicketCount, soldTicketCount) ||
                other.soldTicketCount == soldTicketCount) &&
            const DeepCollectionEquality()
                .equals(other.firstPlaceWinnerId, firstPlaceWinnerId) &&
            const DeepCollectionEquality()
                .equals(other.secondPlaceWinnerId, secondPlaceWinnerId) &&
            const DeepCollectionEquality()
                .equals(other.thirdPlaceWinnerId, thirdPlaceWinnerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.winningVideoUrl, winningVideoUrl) ||
                other.winningVideoUrl == winningVideoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      categoryId,
      name,
      soldTicketCount,
      const DeepCollectionEquality().hash(firstPlaceWinnerId),
      const DeepCollectionEquality().hash(secondPlaceWinnerId),
      const DeepCollectionEquality().hash(thirdPlaceWinnerId),
      status,
      winningVideoUrl);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {final int? id,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'category_id') final int? categoryId,
      final String? name,
      @JsonKey(name: 'sold_ticket_count') final int? soldTicketCount,
      @JsonKey(name: 'first_place_winner_id') final dynamic firstPlaceWinnerId,
      @JsonKey(name: 'second_place_winner_id')
      final dynamic secondPlaceWinnerId,
      @JsonKey(name: 'third_place_winner_id') final dynamic thirdPlaceWinnerId,
      final String? status,
      @JsonKey(name: 'winning_video_url')
      final String? winningVideoUrl}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'sold_ticket_count')
  int? get soldTicketCount;
  @override
  @JsonKey(name: 'first_place_winner_id')
  dynamic get firstPlaceWinnerId;
  @override
  @JsonKey(name: 'second_place_winner_id')
  dynamic get secondPlaceWinnerId;
  @override
  @JsonKey(name: 'third_place_winner_id')
  dynamic get thirdPlaceWinnerId;
  @override
  String? get status;
  @override
  @JsonKey(name: 'winning_video_url')
  String? get winningVideoUrl;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
