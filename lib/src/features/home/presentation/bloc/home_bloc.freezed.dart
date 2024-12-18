// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? categoryId) getAllCashGames,
    required TResult Function(int? categoryId) updateCategoryId,
    required TResult Function() getAllGameCateories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? categoryId)? getAllCashGames,
    TResult? Function(int? categoryId)? updateCategoryId,
    TResult? Function()? getAllGameCateories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? categoryId)? getAllCashGames,
    TResult Function(int? categoryId)? updateCategoryId,
    TResult Function()? getAllGameCateories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCashGamesEvent value) getAllCashGames,
    required TResult Function(UpdateCategoryId value) updateCategoryId,
    required TResult Function(GetAllGameCategoriesEvent value)
        getAllGameCateories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult? Function(UpdateCategoryId value)? updateCategoryId,
    TResult? Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult Function(UpdateCategoryId value)? updateCategoryId,
    TResult Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllCashGamesEventImplCopyWith<$Res> {
  factory _$$GetAllCashGamesEventImplCopyWith(_$GetAllCashGamesEventImpl value,
          $Res Function(_$GetAllCashGamesEventImpl) then) =
      __$$GetAllCashGamesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? categoryId});
}

/// @nodoc
class __$$GetAllCashGamesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllCashGamesEventImpl>
    implements _$$GetAllCashGamesEventImplCopyWith<$Res> {
  __$$GetAllCashGamesEventImplCopyWithImpl(_$GetAllCashGamesEventImpl _value,
      $Res Function(_$GetAllCashGamesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$GetAllCashGamesEventImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetAllCashGamesEventImpl
    with DiagnosticableTreeMixin
    implements GetAllCashGamesEvent {
  const _$GetAllCashGamesEventImpl({this.categoryId});

  @override
  final int? categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getAllCashGames(categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.getAllCashGames'))
      ..add(DiagnosticsProperty('categoryId', categoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCashGamesEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCashGamesEventImplCopyWith<_$GetAllCashGamesEventImpl>
      get copyWith =>
          __$$GetAllCashGamesEventImplCopyWithImpl<_$GetAllCashGamesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? categoryId) getAllCashGames,
    required TResult Function(int? categoryId) updateCategoryId,
    required TResult Function() getAllGameCateories,
  }) {
    return getAllCashGames(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? categoryId)? getAllCashGames,
    TResult? Function(int? categoryId)? updateCategoryId,
    TResult? Function()? getAllGameCateories,
  }) {
    return getAllCashGames?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? categoryId)? getAllCashGames,
    TResult Function(int? categoryId)? updateCategoryId,
    TResult Function()? getAllGameCateories,
    required TResult orElse(),
  }) {
    if (getAllCashGames != null) {
      return getAllCashGames(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCashGamesEvent value) getAllCashGames,
    required TResult Function(UpdateCategoryId value) updateCategoryId,
    required TResult Function(GetAllGameCategoriesEvent value)
        getAllGameCateories,
  }) {
    return getAllCashGames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult? Function(UpdateCategoryId value)? updateCategoryId,
    TResult? Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
  }) {
    return getAllCashGames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult Function(UpdateCategoryId value)? updateCategoryId,
    TResult Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
    required TResult orElse(),
  }) {
    if (getAllCashGames != null) {
      return getAllCashGames(this);
    }
    return orElse();
  }
}

abstract class GetAllCashGamesEvent implements HomeEvent {
  const factory GetAllCashGamesEvent({final int? categoryId}) =
      _$GetAllCashGamesEventImpl;

  int? get categoryId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllCashGamesEventImplCopyWith<_$GetAllCashGamesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryIdImplCopyWith<$Res> {
  factory _$$UpdateCategoryIdImplCopyWith(_$UpdateCategoryIdImpl value,
          $Res Function(_$UpdateCategoryIdImpl) then) =
      __$$UpdateCategoryIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? categoryId});
}

/// @nodoc
class __$$UpdateCategoryIdImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateCategoryIdImpl>
    implements _$$UpdateCategoryIdImplCopyWith<$Res> {
  __$$UpdateCategoryIdImplCopyWithImpl(_$UpdateCategoryIdImpl _value,
      $Res Function(_$UpdateCategoryIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$UpdateCategoryIdImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryIdImpl
    with DiagnosticableTreeMixin
    implements UpdateCategoryId {
  const _$UpdateCategoryIdImpl({this.categoryId});

  @override
  final int? categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateCategoryId(categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateCategoryId'))
      ..add(DiagnosticsProperty('categoryId', categoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryIdImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryIdImplCopyWith<_$UpdateCategoryIdImpl> get copyWith =>
      __$$UpdateCategoryIdImplCopyWithImpl<_$UpdateCategoryIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? categoryId) getAllCashGames,
    required TResult Function(int? categoryId) updateCategoryId,
    required TResult Function() getAllGameCateories,
  }) {
    return updateCategoryId(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? categoryId)? getAllCashGames,
    TResult? Function(int? categoryId)? updateCategoryId,
    TResult? Function()? getAllGameCateories,
  }) {
    return updateCategoryId?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? categoryId)? getAllCashGames,
    TResult Function(int? categoryId)? updateCategoryId,
    TResult Function()? getAllGameCateories,
    required TResult orElse(),
  }) {
    if (updateCategoryId != null) {
      return updateCategoryId(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCashGamesEvent value) getAllCashGames,
    required TResult Function(UpdateCategoryId value) updateCategoryId,
    required TResult Function(GetAllGameCategoriesEvent value)
        getAllGameCateories,
  }) {
    return updateCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult? Function(UpdateCategoryId value)? updateCategoryId,
    TResult? Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
  }) {
    return updateCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult Function(UpdateCategoryId value)? updateCategoryId,
    TResult Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
    required TResult orElse(),
  }) {
    if (updateCategoryId != null) {
      return updateCategoryId(this);
    }
    return orElse();
  }
}

abstract class UpdateCategoryId implements HomeEvent {
  const factory UpdateCategoryId({final int? categoryId}) =
      _$UpdateCategoryIdImpl;

  int? get categoryId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCategoryIdImplCopyWith<_$UpdateCategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllGameCategoriesEventImplCopyWith<$Res> {
  factory _$$GetAllGameCategoriesEventImplCopyWith(
          _$GetAllGameCategoriesEventImpl value,
          $Res Function(_$GetAllGameCategoriesEventImpl) then) =
      __$$GetAllGameCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllGameCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllGameCategoriesEventImpl>
    implements _$$GetAllGameCategoriesEventImplCopyWith<$Res> {
  __$$GetAllGameCategoriesEventImplCopyWithImpl(
      _$GetAllGameCategoriesEventImpl _value,
      $Res Function(_$GetAllGameCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllGameCategoriesEventImpl
    with DiagnosticableTreeMixin
    implements GetAllGameCategoriesEvent {
  const _$GetAllGameCategoriesEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getAllGameCateories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomeEvent.getAllGameCateories'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGameCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? categoryId) getAllCashGames,
    required TResult Function(int? categoryId) updateCategoryId,
    required TResult Function() getAllGameCateories,
  }) {
    return getAllGameCateories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? categoryId)? getAllCashGames,
    TResult? Function(int? categoryId)? updateCategoryId,
    TResult? Function()? getAllGameCateories,
  }) {
    return getAllGameCateories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? categoryId)? getAllCashGames,
    TResult Function(int? categoryId)? updateCategoryId,
    TResult Function()? getAllGameCateories,
    required TResult orElse(),
  }) {
    if (getAllGameCateories != null) {
      return getAllGameCateories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCashGamesEvent value) getAllCashGames,
    required TResult Function(UpdateCategoryId value) updateCategoryId,
    required TResult Function(GetAllGameCategoriesEvent value)
        getAllGameCateories,
  }) {
    return getAllGameCateories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult? Function(UpdateCategoryId value)? updateCategoryId,
    TResult? Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
  }) {
    return getAllGameCateories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCashGamesEvent value)? getAllCashGames,
    TResult Function(UpdateCategoryId value)? updateCategoryId,
    TResult Function(GetAllGameCategoriesEvent value)? getAllGameCateories,
    required TResult orElse(),
  }) {
    if (getAllGameCateories != null) {
      return getAllGameCateories(this);
    }
    return orElse();
  }
}

abstract class GetAllGameCategoriesEvent implements HomeEvent {
  const factory GetAllGameCategoriesEvent() = _$GetAllGameCategoriesEventImpl;
}

/// @nodoc
mixin _$HomeState {
  List<GameCategory>? get categories => throw _privateConstructorUsedError;
  FetchState get categoryFetchState => throw _privateConstructorUsedError;
  String? get categoryErrorMessage => throw _privateConstructorUsedError;
  PaginatedResponse<Game>? get games => throw _privateConstructorUsedError;
  FetchState get gameFetchState => throw _privateConstructorUsedError;
  String? get gameErrorMessage => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<GameCategory>? categories,
      FetchState categoryFetchState,
      String? categoryErrorMessage,
      PaginatedResponse<Game>? games,
      FetchState gameFetchState,
      String? gameErrorMessage,
      int? categoryId});

  $PaginatedResponseCopyWith<Game, $Res>? get games;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? categoryFetchState = null,
    Object? categoryErrorMessage = freezed,
    Object? games = freezed,
    Object? gameFetchState = null,
    Object? gameErrorMessage = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GameCategory>?,
      categoryFetchState: null == categoryFetchState
          ? _value.categoryFetchState
          : categoryFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      categoryErrorMessage: freezed == categoryErrorMessage
          ? _value.categoryErrorMessage
          : categoryErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      games: freezed == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as PaginatedResponse<Game>?,
      gameFetchState: null == gameFetchState
          ? _value.gameFetchState
          : gameFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      gameErrorMessage: freezed == gameErrorMessage
          ? _value.gameErrorMessage
          : gameErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedResponseCopyWith<Game, $Res>? get games {
    if (_value.games == null) {
      return null;
    }

    return $PaginatedResponseCopyWith<Game, $Res>(_value.games!, (value) {
      return _then(_value.copyWith(games: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GameCategory>? categories,
      FetchState categoryFetchState,
      String? categoryErrorMessage,
      PaginatedResponse<Game>? games,
      FetchState gameFetchState,
      String? gameErrorMessage,
      int? categoryId});

  @override
  $PaginatedResponseCopyWith<Game, $Res>? get games;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? categoryFetchState = null,
    Object? categoryErrorMessage = freezed,
    Object? games = freezed,
    Object? gameFetchState = null,
    Object? gameErrorMessage = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_$HomeStateImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GameCategory>?,
      categoryFetchState: null == categoryFetchState
          ? _value.categoryFetchState
          : categoryFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      categoryErrorMessage: freezed == categoryErrorMessage
          ? _value.categoryErrorMessage
          : categoryErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      games: freezed == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as PaginatedResponse<Game>?,
      gameFetchState: null == gameFetchState
          ? _value.gameFetchState
          : gameFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      gameErrorMessage: freezed == gameErrorMessage
          ? _value.gameErrorMessage
          : gameErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl with DiagnosticableTreeMixin implements _HomeState {
  const _$HomeStateImpl(
      {final List<GameCategory>? categories = const [],
      this.categoryFetchState = FetchState.initial,
      this.categoryErrorMessage = null,
      this.games = null,
      this.gameFetchState = FetchState.initial,
      this.gameErrorMessage = null,
      this.categoryId = null})
      : _categories = categories;

  final List<GameCategory>? _categories;
  @override
  @JsonKey()
  List<GameCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final FetchState categoryFetchState;
  @override
  @JsonKey()
  final String? categoryErrorMessage;
  @override
  @JsonKey()
  final PaginatedResponse<Game>? games;
  @override
  @JsonKey()
  final FetchState gameFetchState;
  @override
  @JsonKey()
  final String? gameErrorMessage;
  @override
  @JsonKey()
  final int? categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(categories: $categories, categoryFetchState: $categoryFetchState, categoryErrorMessage: $categoryErrorMessage, games: $games, gameFetchState: $gameFetchState, gameErrorMessage: $gameErrorMessage, categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('categoryFetchState', categoryFetchState))
      ..add(DiagnosticsProperty('categoryErrorMessage', categoryErrorMessage))
      ..add(DiagnosticsProperty('games', games))
      ..add(DiagnosticsProperty('gameFetchState', gameFetchState))
      ..add(DiagnosticsProperty('gameErrorMessage', gameErrorMessage))
      ..add(DiagnosticsProperty('categoryId', categoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.categoryFetchState, categoryFetchState) ||
                other.categoryFetchState == categoryFetchState) &&
            (identical(other.categoryErrorMessage, categoryErrorMessage) ||
                other.categoryErrorMessage == categoryErrorMessage) &&
            (identical(other.games, games) || other.games == games) &&
            (identical(other.gameFetchState, gameFetchState) ||
                other.gameFetchState == gameFetchState) &&
            (identical(other.gameErrorMessage, gameErrorMessage) ||
                other.gameErrorMessage == gameErrorMessage) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      categoryFetchState,
      categoryErrorMessage,
      games,
      gameFetchState,
      gameErrorMessage,
      categoryId);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<GameCategory>? categories,
      final FetchState categoryFetchState,
      final String? categoryErrorMessage,
      final PaginatedResponse<Game>? games,
      final FetchState gameFetchState,
      final String? gameErrorMessage,
      final int? categoryId}) = _$HomeStateImpl;

  @override
  List<GameCategory>? get categories;
  @override
  FetchState get categoryFetchState;
  @override
  String? get categoryErrorMessage;
  @override
  PaginatedResponse<Game>? get games;
  @override
  FetchState get gameFetchState;
  @override
  String? get gameErrorMessage;
  @override
  int? get categoryId;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
