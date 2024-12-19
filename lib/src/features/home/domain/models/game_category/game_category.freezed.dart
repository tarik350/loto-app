// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameCategory _$GameCategoryFromJson(
  Map<String, dynamic> json,
) {
  return _GameCategory.fromJson(
    json,
  );
}

/// @nodoc
mixin _$GameCategory {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_en')
  String? get titleEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_am')
  String? get titleAm => throw _privateConstructorUsedError;
  @JsonKey(name: 'winning_prize')
  int? get winningPrize => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_winning_prize')
  int? get secondWinningPrize => throw _privateConstructorUsedError;
  @JsonKey(name: 'third_winning_prize')
  int? get thirdWinningPrize => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_price')
  int? get ticketPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_count')
  int? get ticketCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_duration')
  String? get gameDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'games_count')
  int? get gamesCount => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "bg_color")
  int? get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "fg_color")
  int? get fgColor => throw _privateConstructorUsedError;
  List<Game>? get games => throw _privateConstructorUsedError;

  /// Serializes this GameCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCategoryCopyWith<GameCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCategoryCopyWith<$Res> {
  factory $GameCategoryCopyWith(
          GameCategory value, $Res Function(GameCategory) then) =
      _$GameCategoryCopyWithImpl<$Res, GameCategory>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'title_en') String? titleEn,
      @JsonKey(name: 'title_am') String? titleAm,
      @JsonKey(name: 'winning_prize') int? winningPrize,
      @JsonKey(name: 'second_winning_prize') int? secondWinningPrize,
      @JsonKey(name: 'third_winning_prize') int? thirdWinningPrize,
      @JsonKey(name: 'ticket_price') int? ticketPrice,
      @JsonKey(name: 'ticket_count') int? ticketCount,
      @JsonKey(name: 'game_duration') String? gameDuration,
      @JsonKey(name: 'games_count') int? gamesCount,
      String? avatar,
      @JsonKey(name: "bg_color") int? bgColor,
      @JsonKey(name: "fg_color") int? fgColor,
      List<Game>? games});
}

/// @nodoc
class _$GameCategoryCopyWithImpl<$Res, $Val extends GameCategory>
    implements $GameCategoryCopyWith<$Res> {
  _$GameCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? titleEn = freezed,
    Object? titleAm = freezed,
    Object? winningPrize = freezed,
    Object? secondWinningPrize = freezed,
    Object? thirdWinningPrize = freezed,
    Object? ticketPrice = freezed,
    Object? ticketCount = freezed,
    Object? gameDuration = freezed,
    Object? gamesCount = freezed,
    Object? avatar = freezed,
    Object? bgColor = freezed,
    Object? fgColor = freezed,
    Object? games = freezed,
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
      titleEn: freezed == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAm: freezed == titleAm
          ? _value.titleAm
          : titleAm // ignore: cast_nullable_to_non_nullable
              as String?,
      winningPrize: freezed == winningPrize
          ? _value.winningPrize
          : winningPrize // ignore: cast_nullable_to_non_nullable
              as int?,
      secondWinningPrize: freezed == secondWinningPrize
          ? _value.secondWinningPrize
          : secondWinningPrize // ignore: cast_nullable_to_non_nullable
              as int?,
      thirdWinningPrize: freezed == thirdWinningPrize
          ? _value.thirdWinningPrize
          : thirdWinningPrize // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketPrice: freezed == ticketPrice
          ? _value.ticketPrice
          : ticketPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketCount: freezed == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int?,
      gameDuration: freezed == gameDuration
          ? _value.gameDuration
          : gameDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      gamesCount: freezed == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as int?,
      fgColor: freezed == fgColor
          ? _value.fgColor
          : fgColor // ignore: cast_nullable_to_non_nullable
              as int?,
      games: freezed == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameCategoryImplCopyWith<$Res>
    implements $GameCategoryCopyWith<$Res> {
  factory _$$GameCategoryImplCopyWith(
          _$GameCategoryImpl value, $Res Function(_$GameCategoryImpl) then) =
      __$$GameCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'title_en') String? titleEn,
      @JsonKey(name: 'title_am') String? titleAm,
      @JsonKey(name: 'winning_prize') int? winningPrize,
      @JsonKey(name: 'second_winning_prize') int? secondWinningPrize,
      @JsonKey(name: 'third_winning_prize') int? thirdWinningPrize,
      @JsonKey(name: 'ticket_price') int? ticketPrice,
      @JsonKey(name: 'ticket_count') int? ticketCount,
      @JsonKey(name: 'game_duration') String? gameDuration,
      @JsonKey(name: 'games_count') int? gamesCount,
      String? avatar,
      @JsonKey(name: "bg_color") int? bgColor,
      @JsonKey(name: "fg_color") int? fgColor,
      List<Game>? games});
}

/// @nodoc
class __$$GameCategoryImplCopyWithImpl<$Res>
    extends _$GameCategoryCopyWithImpl<$Res, _$GameCategoryImpl>
    implements _$$GameCategoryImplCopyWith<$Res> {
  __$$GameCategoryImplCopyWithImpl(
      _$GameCategoryImpl _value, $Res Function(_$GameCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? titleEn = freezed,
    Object? titleAm = freezed,
    Object? winningPrize = freezed,
    Object? secondWinningPrize = freezed,
    Object? thirdWinningPrize = freezed,
    Object? ticketPrice = freezed,
    Object? ticketCount = freezed,
    Object? gameDuration = freezed,
    Object? gamesCount = freezed,
    Object? avatar = freezed,
    Object? bgColor = freezed,
    Object? fgColor = freezed,
    Object? games = freezed,
  }) {
    return _then(_$GameCategoryImpl(
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
      titleEn: freezed == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAm: freezed == titleAm
          ? _value.titleAm
          : titleAm // ignore: cast_nullable_to_non_nullable
              as String?,
      winningPrize: freezed == winningPrize
          ? _value.winningPrize
          : winningPrize // ignore: cast_nullable_to_non_nullable
              as int?,
      secondWinningPrize: freezed == secondWinningPrize
          ? _value.secondWinningPrize
          : secondWinningPrize // ignore: cast_nullable_to_non_nullable
              as int?,
      thirdWinningPrize: freezed == thirdWinningPrize
          ? _value.thirdWinningPrize
          : thirdWinningPrize // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketPrice: freezed == ticketPrice
          ? _value.ticketPrice
          : ticketPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      ticketCount: freezed == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int?,
      gameDuration: freezed == gameDuration
          ? _value.gameDuration
          : gameDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      gamesCount: freezed == gamesCount
          ? _value.gamesCount
          : gamesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as int?,
      fgColor: freezed == fgColor
          ? _value.fgColor
          : fgColor // ignore: cast_nullable_to_non_nullable
              as int?,
      games: freezed == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameCategoryImpl implements _GameCategory {
  const _$GameCategoryImpl(
      {this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'title_en') this.titleEn,
      @JsonKey(name: 'title_am') this.titleAm,
      @JsonKey(name: 'winning_prize') this.winningPrize,
      @JsonKey(name: 'second_winning_prize') this.secondWinningPrize,
      @JsonKey(name: 'third_winning_prize') this.thirdWinningPrize,
      @JsonKey(name: 'ticket_price') this.ticketPrice,
      @JsonKey(name: 'ticket_count') this.ticketCount,
      @JsonKey(name: 'game_duration') this.gameDuration,
      @JsonKey(name: 'games_count') this.gamesCount,
      this.avatar,
      @JsonKey(name: "bg_color") this.bgColor,
      @JsonKey(name: "fg_color") this.fgColor,
      final List<Game>? games})
      : _games = games;

  factory _$GameCategoryImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$GameCategoryImplFromJson(
        json,
      );

  @override
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'title_en')
  final String? titleEn;
  @override
  @JsonKey(name: 'title_am')
  final String? titleAm;
  @override
  @JsonKey(name: 'winning_prize')
  final int? winningPrize;
  @override
  @JsonKey(name: 'second_winning_prize')
  final int? secondWinningPrize;
  @override
  @JsonKey(name: 'third_winning_prize')
  final int? thirdWinningPrize;
  @override
  @JsonKey(name: 'ticket_price')
  final int? ticketPrice;
  @override
  @JsonKey(name: 'ticket_count')
  final int? ticketCount;
  @override
  @JsonKey(name: 'game_duration')
  final String? gameDuration;
  @override
  @JsonKey(name: 'games_count')
  final int? gamesCount;
  @override
  final String? avatar;
  @override
  @JsonKey(name: "bg_color")
  final int? bgColor;
  @override
  @JsonKey(name: "fg_color")
  final int? fgColor;
  final List<Game>? _games;
  @override
  List<Game>? get games {
    final value = _games;
    if (value == null) return null;
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GameCategory(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, titleEn: $titleEn, titleAm: $titleAm, winningPrize: $winningPrize, secondWinningPrize: $secondWinningPrize, thirdWinningPrize: $thirdWinningPrize, ticketPrice: $ticketPrice, ticketCount: $ticketCount, gameDuration: $gameDuration, gamesCount: $gamesCount, avatar: $avatar, bgColor: $bgColor, fgColor: $fgColor, games: $games)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.titleEn, titleEn) || other.titleEn == titleEn) &&
            (identical(other.titleAm, titleAm) || other.titleAm == titleAm) &&
            (identical(other.winningPrize, winningPrize) ||
                other.winningPrize == winningPrize) &&
            (identical(other.secondWinningPrize, secondWinningPrize) ||
                other.secondWinningPrize == secondWinningPrize) &&
            (identical(other.thirdWinningPrize, thirdWinningPrize) ||
                other.thirdWinningPrize == thirdWinningPrize) &&
            (identical(other.ticketPrice, ticketPrice) ||
                other.ticketPrice == ticketPrice) &&
            (identical(other.ticketCount, ticketCount) ||
                other.ticketCount == ticketCount) &&
            (identical(other.gameDuration, gameDuration) ||
                other.gameDuration == gameDuration) &&
            (identical(other.gamesCount, gamesCount) ||
                other.gamesCount == gamesCount) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.fgColor, fgColor) || other.fgColor == fgColor) &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      titleEn,
      titleAm,
      winningPrize,
      secondWinningPrize,
      thirdWinningPrize,
      ticketPrice,
      ticketCount,
      gameDuration,
      gamesCount,
      avatar,
      bgColor,
      fgColor,
      const DeepCollectionEquality().hash(_games));

  /// Create a copy of GameCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameCategoryImplCopyWith<_$GameCategoryImpl> get copyWith =>
      __$$GameCategoryImplCopyWithImpl<_$GameCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameCategoryImplToJson(
      this,
    );
  }
}

abstract class _GameCategory implements GameCategory {
  const factory _GameCategory(
      {final int? id,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'title_en') final String? titleEn,
      @JsonKey(name: 'title_am') final String? titleAm,
      @JsonKey(name: 'winning_prize') final int? winningPrize,
      @JsonKey(name: 'second_winning_prize') final int? secondWinningPrize,
      @JsonKey(name: 'third_winning_prize') final int? thirdWinningPrize,
      @JsonKey(name: 'ticket_price') final int? ticketPrice,
      @JsonKey(name: 'ticket_count') final int? ticketCount,
      @JsonKey(name: 'game_duration') final String? gameDuration,
      @JsonKey(name: 'games_count') final int? gamesCount,
      final String? avatar,
      @JsonKey(name: "bg_color") final int? bgColor,
      @JsonKey(name: "fg_color") final int? fgColor,
      final List<Game>? games}) = _$GameCategoryImpl;

  factory _GameCategory.fromJson(
    Map<String, dynamic> json,
  ) = _$GameCategoryImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'title_en')
  String? get titleEn;
  @override
  @JsonKey(name: 'title_am')
  String? get titleAm;
  @override
  @JsonKey(name: 'winning_prize')
  int? get winningPrize;
  @override
  @JsonKey(name: 'second_winning_prize')
  int? get secondWinningPrize;
  @override
  @JsonKey(name: 'third_winning_prize')
  int? get thirdWinningPrize;
  @override
  @JsonKey(name: 'ticket_price')
  int? get ticketPrice;
  @override
  @JsonKey(name: 'ticket_count')
  int? get ticketCount;
  @override
  @JsonKey(name: 'game_duration')
  String? get gameDuration;
  @override
  @JsonKey(name: 'games_count')
  int? get gamesCount;
  @override
  String? get avatar;
  @override
  @JsonKey(name: "bg_color")
  int? get bgColor;
  @override
  @JsonKey(name: "fg_color")
  int? get fgColor;
  @override
  List<Game>? get games;

  /// Create a copy of GameCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameCategoryImplCopyWith<_$GameCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
