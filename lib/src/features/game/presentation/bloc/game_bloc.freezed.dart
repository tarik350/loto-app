// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int gameId) fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int gameId)? fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int gameId)? fetchTickets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchGameTickets value) fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchGameTickets value)? fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchGameTickets value)? fetchTickets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GameEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int gameId) fetchTickets,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int gameId)? fetchTickets,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int gameId)? fetchTickets,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchGameTickets value) fetchTickets,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchGameTickets value)? fetchTickets,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchGameTickets value)? fetchTickets,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GameEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchGameTicketsImplCopyWith<$Res> {
  factory _$$FetchGameTicketsImplCopyWith(_$FetchGameTicketsImpl value,
          $Res Function(_$FetchGameTicketsImpl) then) =
      __$$FetchGameTicketsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int gameId});
}

/// @nodoc
class __$$FetchGameTicketsImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$FetchGameTicketsImpl>
    implements _$$FetchGameTicketsImplCopyWith<$Res> {
  __$$FetchGameTicketsImplCopyWithImpl(_$FetchGameTicketsImpl _value,
      $Res Function(_$FetchGameTicketsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
  }) {
    return _then(_$FetchGameTicketsImpl(
      null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchGameTicketsImpl implements FetchGameTickets {
  const _$FetchGameTicketsImpl(this.gameId);

  @override
  final int gameId;

  @override
  String toString() {
    return 'GameEvent.fetchTickets(gameId: $gameId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchGameTicketsImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchGameTicketsImplCopyWith<_$FetchGameTicketsImpl> get copyWith =>
      __$$FetchGameTicketsImplCopyWithImpl<_$FetchGameTicketsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int gameId) fetchTickets,
  }) {
    return fetchTickets(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int gameId)? fetchTickets,
  }) {
    return fetchTickets?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int gameId)? fetchTickets,
    required TResult orElse(),
  }) {
    if (fetchTickets != null) {
      return fetchTickets(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchGameTickets value) fetchTickets,
  }) {
    return fetchTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchGameTickets value)? fetchTickets,
  }) {
    return fetchTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchGameTickets value)? fetchTickets,
    required TResult orElse(),
  }) {
    if (fetchTickets != null) {
      return fetchTickets(this);
    }
    return orElse();
  }
}

abstract class FetchGameTickets implements GameEvent {
  const factory FetchGameTickets(final int gameId) = _$FetchGameTicketsImpl;

  int get gameId;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchGameTicketsImplCopyWith<_$FetchGameTicketsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ticketLoading,
    required TResult Function(String message) errorLoading,
    required TResult Function(List<Ticket> tickets) ticketLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ticketLoading,
    TResult? Function(String message)? errorLoading,
    TResult? Function(List<Ticket> tickets)? ticketLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ticketLoading,
    TResult Function(String message)? errorLoading,
    TResult Function(List<Ticket> tickets)? ticketLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TicketLoading value) ticketLoading,
    required TResult Function(ErrorTicketLoading value) errorLoading,
    required TResult Function(TicketLoaded value) ticketLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TicketLoading value)? ticketLoading,
    TResult? Function(ErrorTicketLoading value)? errorLoading,
    TResult? Function(TicketLoaded value)? ticketLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TicketLoading value)? ticketLoading,
    TResult Function(ErrorTicketLoading value)? errorLoading,
    TResult Function(TicketLoaded value)? ticketLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ticketLoading,
    required TResult Function(String message) errorLoading,
    required TResult Function(List<Ticket> tickets) ticketLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ticketLoading,
    TResult? Function(String message)? errorLoading,
    TResult? Function(List<Ticket> tickets)? ticketLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ticketLoading,
    TResult Function(String message)? errorLoading,
    TResult Function(List<Ticket> tickets)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TicketLoading value) ticketLoading,
    required TResult Function(ErrorTicketLoading value) errorLoading,
    required TResult Function(TicketLoaded value) ticketLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TicketLoading value)? ticketLoading,
    TResult? Function(ErrorTicketLoading value)? errorLoading,
    TResult? Function(TicketLoaded value)? ticketLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TicketLoading value)? ticketLoading,
    TResult Function(ErrorTicketLoading value)? errorLoading,
    TResult Function(TicketLoaded value)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TicketLoadingImplCopyWith<$Res> {
  factory _$$TicketLoadingImplCopyWith(
          _$TicketLoadingImpl value, $Res Function(_$TicketLoadingImpl) then) =
      __$$TicketLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketLoadingImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$TicketLoadingImpl>
    implements _$$TicketLoadingImplCopyWith<$Res> {
  __$$TicketLoadingImplCopyWithImpl(
      _$TicketLoadingImpl _value, $Res Function(_$TicketLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TicketLoadingImpl implements TicketLoading {
  const _$TicketLoadingImpl();

  @override
  String toString() {
    return 'GameState.ticketLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ticketLoading,
    required TResult Function(String message) errorLoading,
    required TResult Function(List<Ticket> tickets) ticketLoaded,
  }) {
    return ticketLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ticketLoading,
    TResult? Function(String message)? errorLoading,
    TResult? Function(List<Ticket> tickets)? ticketLoaded,
  }) {
    return ticketLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ticketLoading,
    TResult Function(String message)? errorLoading,
    TResult Function(List<Ticket> tickets)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (ticketLoading != null) {
      return ticketLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TicketLoading value) ticketLoading,
    required TResult Function(ErrorTicketLoading value) errorLoading,
    required TResult Function(TicketLoaded value) ticketLoaded,
  }) {
    return ticketLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TicketLoading value)? ticketLoading,
    TResult? Function(ErrorTicketLoading value)? errorLoading,
    TResult? Function(TicketLoaded value)? ticketLoaded,
  }) {
    return ticketLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TicketLoading value)? ticketLoading,
    TResult Function(ErrorTicketLoading value)? errorLoading,
    TResult Function(TicketLoaded value)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (ticketLoading != null) {
      return ticketLoading(this);
    }
    return orElse();
  }
}

abstract class TicketLoading implements GameState {
  const factory TicketLoading() = _$TicketLoadingImpl;
}

/// @nodoc
abstract class _$$ErrorTicketLoadingImplCopyWith<$Res> {
  factory _$$ErrorTicketLoadingImplCopyWith(_$ErrorTicketLoadingImpl value,
          $Res Function(_$ErrorTicketLoadingImpl) then) =
      __$$ErrorTicketLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorTicketLoadingImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$ErrorTicketLoadingImpl>
    implements _$$ErrorTicketLoadingImplCopyWith<$Res> {
  __$$ErrorTicketLoadingImplCopyWithImpl(_$ErrorTicketLoadingImpl _value,
      $Res Function(_$ErrorTicketLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorTicketLoadingImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorTicketLoadingImpl implements ErrorTicketLoading {
  const _$ErrorTicketLoadingImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GameState.errorLoading(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTicketLoadingImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTicketLoadingImplCopyWith<_$ErrorTicketLoadingImpl> get copyWith =>
      __$$ErrorTicketLoadingImplCopyWithImpl<_$ErrorTicketLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ticketLoading,
    required TResult Function(String message) errorLoading,
    required TResult Function(List<Ticket> tickets) ticketLoaded,
  }) {
    return errorLoading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ticketLoading,
    TResult? Function(String message)? errorLoading,
    TResult? Function(List<Ticket> tickets)? ticketLoaded,
  }) {
    return errorLoading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ticketLoading,
    TResult Function(String message)? errorLoading,
    TResult Function(List<Ticket> tickets)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TicketLoading value) ticketLoading,
    required TResult Function(ErrorTicketLoading value) errorLoading,
    required TResult Function(TicketLoaded value) ticketLoaded,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TicketLoading value)? ticketLoading,
    TResult? Function(ErrorTicketLoading value)? errorLoading,
    TResult? Function(TicketLoaded value)? ticketLoaded,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TicketLoading value)? ticketLoading,
    TResult Function(ErrorTicketLoading value)? errorLoading,
    TResult Function(TicketLoaded value)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class ErrorTicketLoading implements GameState {
  const factory ErrorTicketLoading(final String message) =
      _$ErrorTicketLoadingImpl;

  String get message;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorTicketLoadingImplCopyWith<_$ErrorTicketLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketLoadedImplCopyWith<$Res> {
  factory _$$TicketLoadedImplCopyWith(
          _$TicketLoadedImpl value, $Res Function(_$TicketLoadedImpl) then) =
      __$$TicketLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ticket> tickets});
}

/// @nodoc
class __$$TicketLoadedImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$TicketLoadedImpl>
    implements _$$TicketLoadedImplCopyWith<$Res> {
  __$$TicketLoadedImplCopyWithImpl(
      _$TicketLoadedImpl _value, $Res Function(_$TicketLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$TicketLoadedImpl(
      null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$TicketLoadedImpl implements TicketLoaded {
  const _$TicketLoadedImpl(final List<Ticket> tickets) : _tickets = tickets;

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'GameState.ticketLoaded(tickets: $tickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketLoadedImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketLoadedImplCopyWith<_$TicketLoadedImpl> get copyWith =>
      __$$TicketLoadedImplCopyWithImpl<_$TicketLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ticketLoading,
    required TResult Function(String message) errorLoading,
    required TResult Function(List<Ticket> tickets) ticketLoaded,
  }) {
    return ticketLoaded(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ticketLoading,
    TResult? Function(String message)? errorLoading,
    TResult? Function(List<Ticket> tickets)? ticketLoaded,
  }) {
    return ticketLoaded?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ticketLoading,
    TResult Function(String message)? errorLoading,
    TResult Function(List<Ticket> tickets)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (ticketLoaded != null) {
      return ticketLoaded(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TicketLoading value) ticketLoading,
    required TResult Function(ErrorTicketLoading value) errorLoading,
    required TResult Function(TicketLoaded value) ticketLoaded,
  }) {
    return ticketLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TicketLoading value)? ticketLoading,
    TResult? Function(ErrorTicketLoading value)? errorLoading,
    TResult? Function(TicketLoaded value)? ticketLoaded,
  }) {
    return ticketLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TicketLoading value)? ticketLoading,
    TResult Function(ErrorTicketLoading value)? errorLoading,
    TResult Function(TicketLoaded value)? ticketLoaded,
    required TResult orElse(),
  }) {
    if (ticketLoaded != null) {
      return ticketLoaded(this);
    }
    return orElse();
  }
}

abstract class TicketLoaded implements GameState {
  const factory TicketLoaded(final List<Ticket> tickets) = _$TicketLoadedImpl;

  List<Ticket> get tickets;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketLoadedImplCopyWith<_$TicketLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
