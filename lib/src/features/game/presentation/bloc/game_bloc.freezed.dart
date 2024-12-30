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
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
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
abstract class _$$FetchGameTicketsImplCopyWith<$Res> {
  factory _$$FetchGameTicketsImplCopyWith(_$FetchGameTicketsImpl value,
          $Res Function(_$FetchGameTicketsImpl) then) =
      __$$FetchGameTicketsImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$FetchGameTicketsImpl
    with DiagnosticableTreeMixin
    implements FetchGameTickets {
  const _$FetchGameTicketsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.fetchTickets()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameEvent.fetchTickets'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchGameTicketsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return fetchTickets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return fetchTickets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (fetchTickets != null) {
      return fetchTickets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return fetchTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return fetchTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (fetchTickets != null) {
      return fetchTickets(this);
    }
    return orElse();
  }
}

abstract class FetchGameTickets implements GameEvent {
  const factory FetchGameTickets() = _$FetchGameTicketsImpl;
}

/// @nodoc
abstract class _$$UpdateGameIdImplCopyWith<$Res> {
  factory _$$UpdateGameIdImplCopyWith(
          _$UpdateGameIdImpl value, $Res Function(_$UpdateGameIdImpl) then) =
      __$$UpdateGameIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int gameId});
}

/// @nodoc
class __$$UpdateGameIdImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$UpdateGameIdImpl>
    implements _$$UpdateGameIdImplCopyWith<$Res> {
  __$$UpdateGameIdImplCopyWithImpl(
      _$UpdateGameIdImpl _value, $Res Function(_$UpdateGameIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
  }) {
    return _then(_$UpdateGameIdImpl(
      null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateGameIdImpl with DiagnosticableTreeMixin implements UpdateGameId {
  const _$UpdateGameIdImpl(this.gameId);

  @override
  final int gameId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.updateGameId(gameId: $gameId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.updateGameId'))
      ..add(DiagnosticsProperty('gameId', gameId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGameIdImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGameIdImplCopyWith<_$UpdateGameIdImpl> get copyWith =>
      __$$UpdateGameIdImplCopyWithImpl<_$UpdateGameIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return updateGameId(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return updateGameId?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (updateGameId != null) {
      return updateGameId(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return updateGameId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return updateGameId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (updateGameId != null) {
      return updateGameId(this);
    }
    return orElse();
  }
}

abstract class UpdateGameId implements GameEvent {
  const factory UpdateGameId(final int gameId) = _$UpdateGameIdImpl;

  int get gameId;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGameIdImplCopyWith<_$UpdateGameIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetGameStateImplCopyWith<$Res> {
  factory _$$ResetGameStateImplCopyWith(_$ResetGameStateImpl value,
          $Res Function(_$ResetGameStateImpl) then) =
      __$$ResetGameStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetGameStateImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ResetGameStateImpl>
    implements _$$ResetGameStateImplCopyWith<$Res> {
  __$$ResetGameStateImplCopyWithImpl(
      _$ResetGameStateImpl _value, $Res Function(_$ResetGameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetGameStateImpl
    with DiagnosticableTreeMixin
    implements ResetGameState {
  const _$ResetGameStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.resetState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameEvent.resetState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetGameStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetGameState implements GameEvent {
  const factory ResetGameState() = _$ResetGameStateImpl;
}

/// @nodoc
abstract class _$$LockTicketEventImplCopyWith<$Res> {
  factory _$$LockTicketEventImplCopyWith(_$LockTicketEventImpl value,
          $Res Function(_$LockTicketEventImpl) then) =
      __$$LockTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});

  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$LockTicketEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$LockTicketEventImpl>
    implements _$$LockTicketEventImplCopyWith<$Res> {
  __$$LockTicketEventImplCopyWithImpl(
      _$LockTicketEventImpl _value, $Res Function(_$LockTicketEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$LockTicketEventImpl(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res> get ticket {
    return $TicketCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc

class _$LockTicketEventImpl
    with DiagnosticableTreeMixin
    implements LockTicketEvent {
  const _$LockTicketEventImpl(this.ticket);

  @override
  final Ticket ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.lockTicket(ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.lockTicket'))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockTicketEventImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LockTicketEventImplCopyWith<_$LockTicketEventImpl> get copyWith =>
      __$$LockTicketEventImplCopyWithImpl<_$LockTicketEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return lockTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return lockTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (lockTicket != null) {
      return lockTicket(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return lockTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return lockTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (lockTicket != null) {
      return lockTicket(this);
    }
    return orElse();
  }
}

abstract class LockTicketEvent implements GameEvent {
  const factory LockTicketEvent(final Ticket ticket) = _$LockTicketEventImpl;

  Ticket get ticket;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LockTicketEventImplCopyWith<_$LockTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnlockTicketEventImplCopyWith<$Res> {
  factory _$$UnlockTicketEventImplCopyWith(_$UnlockTicketEventImpl value,
          $Res Function(_$UnlockTicketEventImpl) then) =
      __$$UnlockTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});

  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$UnlockTicketEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$UnlockTicketEventImpl>
    implements _$$UnlockTicketEventImplCopyWith<$Res> {
  __$$UnlockTicketEventImplCopyWithImpl(_$UnlockTicketEventImpl _value,
      $Res Function(_$UnlockTicketEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$UnlockTicketEventImpl(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res> get ticket {
    return $TicketCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc

class _$UnlockTicketEventImpl
    with DiagnosticableTreeMixin
    implements UnlockTicketEvent {
  const _$UnlockTicketEventImpl(this.ticket);

  @override
  final Ticket ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.unlockTicket(ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.unlockTicket'))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnlockTicketEventImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnlockTicketEventImplCopyWith<_$UnlockTicketEventImpl> get copyWith =>
      __$$UnlockTicketEventImplCopyWithImpl<_$UnlockTicketEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return unlockTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return unlockTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (unlockTicket != null) {
      return unlockTicket(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return unlockTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return unlockTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (unlockTicket != null) {
      return unlockTicket(this);
    }
    return orElse();
  }
}

abstract class UnlockTicketEvent implements GameEvent {
  const factory UnlockTicketEvent(final Ticket ticket) =
      _$UnlockTicketEventImpl;

  Ticket get ticket;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnlockTicketEventImplCopyWith<_$UnlockTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTicketEventImplCopyWith<$Res> {
  factory _$$SearchTicketEventImplCopyWith(_$SearchTicketEventImpl value,
          $Res Function(_$SearchTicketEventImpl) then) =
      __$$SearchTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int ticketNumber});
}

/// @nodoc
class __$$SearchTicketEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SearchTicketEventImpl>
    implements _$$SearchTicketEventImplCopyWith<$Res> {
  __$$SearchTicketEventImplCopyWithImpl(_$SearchTicketEventImpl _value,
      $Res Function(_$SearchTicketEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketNumber = null,
  }) {
    return _then(_$SearchTicketEventImpl(
      null == ticketNumber
          ? _value.ticketNumber
          : ticketNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchTicketEventImpl
    with DiagnosticableTreeMixin
    implements SearchTicketEvent {
  const _$SearchTicketEventImpl(this.ticketNumber);

  @override
  final int ticketNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.searchTicket(ticketNumber: $ticketNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.searchTicket'))
      ..add(DiagnosticsProperty('ticketNumber', ticketNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTicketEventImpl &&
            (identical(other.ticketNumber, ticketNumber) ||
                other.ticketNumber == ticketNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketNumber);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTicketEventImplCopyWith<_$SearchTicketEventImpl> get copyWith =>
      __$$SearchTicketEventImplCopyWithImpl<_$SearchTicketEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return searchTicket(ticketNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return searchTicket?.call(ticketNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (searchTicket != null) {
      return searchTicket(ticketNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return searchTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return searchTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (searchTicket != null) {
      return searchTicket(this);
    }
    return orElse();
  }
}

abstract class SearchTicketEvent implements GameEvent {
  const factory SearchTicketEvent(final int ticketNumber) =
      _$SearchTicketEventImpl;

  int get ticketNumber;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTicketEventImplCopyWith<_$SearchTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllLockedUserTicketsImplCopyWith<$Res> {
  factory _$$FetchAllLockedUserTicketsImplCopyWith(
          _$FetchAllLockedUserTicketsImpl value,
          $Res Function(_$FetchAllLockedUserTicketsImpl) then) =
      __$$FetchAllLockedUserTicketsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllLockedUserTicketsImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$FetchAllLockedUserTicketsImpl>
    implements _$$FetchAllLockedUserTicketsImplCopyWith<$Res> {
  __$$FetchAllLockedUserTicketsImplCopyWithImpl(
      _$FetchAllLockedUserTicketsImpl _value,
      $Res Function(_$FetchAllLockedUserTicketsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllLockedUserTicketsImpl
    with DiagnosticableTreeMixin
    implements FetchAllLockedUserTickets {
  const _$FetchAllLockedUserTicketsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.fetchAllLockedUserTickets()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'GameEvent.fetchAllLockedUserTickets'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllLockedUserTicketsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return fetchAllLockedUserTickets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return fetchAllLockedUserTickets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (fetchAllLockedUserTickets != null) {
      return fetchAllLockedUserTickets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return fetchAllLockedUserTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return fetchAllLockedUserTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (fetchAllLockedUserTickets != null) {
      return fetchAllLockedUserTickets(this);
    }
    return orElse();
  }
}

abstract class FetchAllLockedUserTickets implements GameEvent {
  const factory FetchAllLockedUserTickets() = _$FetchAllLockedUserTicketsImpl;
}

/// @nodoc
abstract class _$$FilterTicketEventImplCopyWith<$Res> {
  factory _$$FilterTicketEventImplCopyWith(_$FilterTicketEventImpl value,
          $Res Function(_$FilterTicketEventImpl) then) =
      __$$FilterTicketEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterTicketEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$FilterTicketEventImpl>
    implements _$$FilterTicketEventImplCopyWith<$Res> {
  __$$FilterTicketEventImplCopyWithImpl(_$FilterTicketEventImpl _value,
      $Res Function(_$FilterTicketEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FilterTicketEventImpl
    with DiagnosticableTreeMixin
    implements FilterTicketEvent {
  const _$FilterTicketEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.filterTicket()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameEvent.filterTicket'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterTicketEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return filterTicket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return filterTicket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (filterTicket != null) {
      return filterTicket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return filterTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return filterTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (filterTicket != null) {
      return filterTicket(this);
    }
    return orElse();
  }
}

abstract class FilterTicketEvent implements GameEvent {
  const factory FilterTicketEvent() = _$FilterTicketEventImpl;
}

/// @nodoc
abstract class _$$UpdateSelectedTicketFilterTypeImplCopyWith<$Res> {
  factory _$$UpdateSelectedTicketFilterTypeImplCopyWith(
          _$UpdateSelectedTicketFilterTypeImpl value,
          $Res Function(_$UpdateSelectedTicketFilterTypeImpl) then) =
      __$$UpdateSelectedTicketFilterTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketFilterType filterType});
}

/// @nodoc
class __$$UpdateSelectedTicketFilterTypeImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$UpdateSelectedTicketFilterTypeImpl>
    implements _$$UpdateSelectedTicketFilterTypeImplCopyWith<$Res> {
  __$$UpdateSelectedTicketFilterTypeImplCopyWithImpl(
      _$UpdateSelectedTicketFilterTypeImpl _value,
      $Res Function(_$UpdateSelectedTicketFilterTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterType = null,
  }) {
    return _then(_$UpdateSelectedTicketFilterTypeImpl(
      filterType: null == filterType
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as TicketFilterType,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedTicketFilterTypeImpl
    with DiagnosticableTreeMixin
    implements UpdateSelectedTicketFilterType {
  const _$UpdateSelectedTicketFilterTypeImpl({required this.filterType});

  @override
  final TicketFilterType filterType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.updateSelectedFilterType(filterType: $filterType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.updateSelectedFilterType'))
      ..add(DiagnosticsProperty('filterType', filterType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedTicketFilterTypeImpl &&
            (identical(other.filterType, filterType) ||
                other.filterType == filterType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterType);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedTicketFilterTypeImplCopyWith<
          _$UpdateSelectedTicketFilterTypeImpl>
      get copyWith => __$$UpdateSelectedTicketFilterTypeImplCopyWithImpl<
          _$UpdateSelectedTicketFilterTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return updateSelectedFilterType(filterType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return updateSelectedFilterType?.call(filterType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (updateSelectedFilterType != null) {
      return updateSelectedFilterType(filterType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return updateSelectedFilterType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return updateSelectedFilterType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (updateSelectedFilterType != null) {
      return updateSelectedFilterType(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedTicketFilterType implements GameEvent {
  const factory UpdateSelectedTicketFilterType(
          {required final TicketFilterType filterType}) =
      _$UpdateSelectedTicketFilterTypeImpl;

  TicketFilterType get filterType;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedTicketFilterTypeImplCopyWith<
          _$UpdateSelectedTicketFilterTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectRandomTicketImplCopyWith<$Res> {
  factory _$$SelectRandomTicketImplCopyWith(_$SelectRandomTicketImpl value,
          $Res Function(_$SelectRandomTicketImpl) then) =
      __$$SelectRandomTicketImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectRandomTicketImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SelectRandomTicketImpl>
    implements _$$SelectRandomTicketImplCopyWith<$Res> {
  __$$SelectRandomTicketImplCopyWithImpl(_$SelectRandomTicketImpl _value,
      $Res Function(_$SelectRandomTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectRandomTicketImpl
    with DiagnosticableTreeMixin
    implements SelectRandomTicket {
  const _$SelectRandomTicketImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.selectRandomTicket()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameEvent.selectRandomTicket'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectRandomTicketImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
    required TResult Function(int gameId) updateGameId,
    required TResult Function() resetState,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function() fetchAllLockedUserTickets,
    required TResult Function() filterTicket,
    required TResult Function(TicketFilterType filterType)
        updateSelectedFilterType,
    required TResult Function() selectRandomTicket,
  }) {
    return selectRandomTicket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
    TResult? Function(int gameId)? updateGameId,
    TResult? Function()? resetState,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function()? fetchAllLockedUserTickets,
    TResult? Function()? filterTicket,
    TResult? Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult? Function()? selectRandomTicket,
  }) {
    return selectRandomTicket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    TResult Function(int gameId)? updateGameId,
    TResult Function()? resetState,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function()? fetchAllLockedUserTickets,
    TResult Function()? filterTicket,
    TResult Function(TicketFilterType filterType)? updateSelectedFilterType,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (selectRandomTicket != null) {
      return selectRandomTicket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(UpdateGameId value) updateGameId,
    required TResult Function(ResetGameState value) resetState,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnlockTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FetchAllLockedUserTickets value)
        fetchAllLockedUserTickets,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(UpdateSelectedTicketFilterType value)
        updateSelectedFilterType,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return selectRandomTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(UpdateGameId value)? updateGameId,
    TResult? Function(ResetGameState value)? resetState,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnlockTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return selectRandomTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(UpdateGameId value)? updateGameId,
    TResult Function(ResetGameState value)? resetState,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnlockTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FetchAllLockedUserTickets value)?
        fetchAllLockedUserTickets,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(UpdateSelectedTicketFilterType value)?
        updateSelectedFilterType,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (selectRandomTicket != null) {
      return selectRandomTicket(this);
    }
    return orElse();
  }
}

abstract class SelectRandomTicket implements GameEvent {
  const factory SelectRandomTicket() = _$SelectRandomTicketImpl;
}

/// @nodoc
mixin _$GameState {
//filter state
  int get quarterSize => throw _privateConstructorUsedError;
  List<Ticket> get tempTickets => throw _privateConstructorUsedError;
  List<TicketFilterType> get ticketFilterType =>
      throw _privateConstructorUsedError;
  TicketFilterType? get selectedFilterType =>
      throw _privateConstructorUsedError; //ticket and game state
  List<Ticket> get tickets => throw _privateConstructorUsedError;
  int? get gameId => throw _privateConstructorUsedError;
  List<Ticket> get lockedTickets => throw _privateConstructorUsedError;
  FetchState get ticketFetchState => throw _privateConstructorUsedError;
  FetchState get lockedTicketFetchState => throw _privateConstructorUsedError;
  FormSubmissionStatus get ticketPurchaseStatus =>
      throw _privateConstructorUsedError;
  TicketLockState get ticketLockState => throw _privateConstructorUsedError;
  TicketUnlockState get ticketUnlockState => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  RandomTicketLockState get randomTicketLockState =>
      throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {int quarterSize,
      List<Ticket> tempTickets,
      List<TicketFilterType> ticketFilterType,
      TicketFilterType? selectedFilterType,
      List<Ticket> tickets,
      int? gameId,
      List<Ticket> lockedTickets,
      FetchState ticketFetchState,
      FetchState lockedTicketFetchState,
      FormSubmissionStatus ticketPurchaseStatus,
      TicketLockState ticketLockState,
      TicketUnlockState ticketUnlockState,
      String? errorMessage,
      RandomTicketLockState randomTicketLockState});

  $TicketLockStateCopyWith<$Res> get ticketLockState;
  $TicketUnlockStateCopyWith<$Res> get ticketUnlockState;
  $RandomTicketLockStateCopyWith<$Res> get randomTicketLockState;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quarterSize = null,
    Object? tempTickets = null,
    Object? ticketFilterType = null,
    Object? selectedFilterType = freezed,
    Object? tickets = null,
    Object? gameId = freezed,
    Object? lockedTickets = null,
    Object? ticketFetchState = null,
    Object? lockedTicketFetchState = null,
    Object? ticketPurchaseStatus = null,
    Object? ticketLockState = null,
    Object? ticketUnlockState = null,
    Object? errorMessage = freezed,
    Object? randomTicketLockState = null,
  }) {
    return _then(_value.copyWith(
      quarterSize: null == quarterSize
          ? _value.quarterSize
          : quarterSize // ignore: cast_nullable_to_non_nullable
              as int,
      tempTickets: null == tempTickets
          ? _value.tempTickets
          : tempTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      ticketFilterType: null == ticketFilterType
          ? _value.ticketFilterType
          : ticketFilterType // ignore: cast_nullable_to_non_nullable
              as List<TicketFilterType>,
      selectedFilterType: freezed == selectedFilterType
          ? _value.selectedFilterType
          : selectedFilterType // ignore: cast_nullable_to_non_nullable
              as TicketFilterType?,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int?,
      lockedTickets: null == lockedTickets
          ? _value.lockedTickets
          : lockedTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      ticketFetchState: null == ticketFetchState
          ? _value.ticketFetchState
          : ticketFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      lockedTicketFetchState: null == lockedTicketFetchState
          ? _value.lockedTicketFetchState
          : lockedTicketFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      ticketPurchaseStatus: null == ticketPurchaseStatus
          ? _value.ticketPurchaseStatus
          : ticketPurchaseStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticketLockState: null == ticketLockState
          ? _value.ticketLockState
          : ticketLockState // ignore: cast_nullable_to_non_nullable
              as TicketLockState,
      ticketUnlockState: null == ticketUnlockState
          ? _value.ticketUnlockState
          : ticketUnlockState // ignore: cast_nullable_to_non_nullable
              as TicketUnlockState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      randomTicketLockState: null == randomTicketLockState
          ? _value.randomTicketLockState
          : randomTicketLockState // ignore: cast_nullable_to_non_nullable
              as RandomTicketLockState,
    ) as $Val);
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketLockStateCopyWith<$Res> get ticketLockState {
    return $TicketLockStateCopyWith<$Res>(_value.ticketLockState, (value) {
      return _then(_value.copyWith(ticketLockState: value) as $Val);
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketUnlockStateCopyWith<$Res> get ticketUnlockState {
    return $TicketUnlockStateCopyWith<$Res>(_value.ticketUnlockState, (value) {
      return _then(_value.copyWith(ticketUnlockState: value) as $Val);
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RandomTicketLockStateCopyWith<$Res> get randomTicketLockState {
    return $RandomTicketLockStateCopyWith<$Res>(_value.randomTicketLockState,
        (value) {
      return _then(_value.copyWith(randomTicketLockState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int quarterSize,
      List<Ticket> tempTickets,
      List<TicketFilterType> ticketFilterType,
      TicketFilterType? selectedFilterType,
      List<Ticket> tickets,
      int? gameId,
      List<Ticket> lockedTickets,
      FetchState ticketFetchState,
      FetchState lockedTicketFetchState,
      FormSubmissionStatus ticketPurchaseStatus,
      TicketLockState ticketLockState,
      TicketUnlockState ticketUnlockState,
      String? errorMessage,
      RandomTicketLockState randomTicketLockState});

  @override
  $TicketLockStateCopyWith<$Res> get ticketLockState;
  @override
  $TicketUnlockStateCopyWith<$Res> get ticketUnlockState;
  @override
  $RandomTicketLockStateCopyWith<$Res> get randomTicketLockState;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quarterSize = null,
    Object? tempTickets = null,
    Object? ticketFilterType = null,
    Object? selectedFilterType = freezed,
    Object? tickets = null,
    Object? gameId = freezed,
    Object? lockedTickets = null,
    Object? ticketFetchState = null,
    Object? lockedTicketFetchState = null,
    Object? ticketPurchaseStatus = null,
    Object? ticketLockState = null,
    Object? ticketUnlockState = null,
    Object? errorMessage = freezed,
    Object? randomTicketLockState = null,
  }) {
    return _then(_$GameStateImpl(
      quarterSize: null == quarterSize
          ? _value.quarterSize
          : quarterSize // ignore: cast_nullable_to_non_nullable
              as int,
      tempTickets: null == tempTickets
          ? _value._tempTickets
          : tempTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      ticketFilterType: null == ticketFilterType
          ? _value._ticketFilterType
          : ticketFilterType // ignore: cast_nullable_to_non_nullable
              as List<TicketFilterType>,
      selectedFilterType: freezed == selectedFilterType
          ? _value.selectedFilterType
          : selectedFilterType // ignore: cast_nullable_to_non_nullable
              as TicketFilterType?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int?,
      lockedTickets: null == lockedTickets
          ? _value._lockedTickets
          : lockedTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      ticketFetchState: null == ticketFetchState
          ? _value.ticketFetchState
          : ticketFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      lockedTicketFetchState: null == lockedTicketFetchState
          ? _value.lockedTicketFetchState
          : lockedTicketFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      ticketPurchaseStatus: null == ticketPurchaseStatus
          ? _value.ticketPurchaseStatus
          : ticketPurchaseStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticketLockState: null == ticketLockState
          ? _value.ticketLockState
          : ticketLockState // ignore: cast_nullable_to_non_nullable
              as TicketLockState,
      ticketUnlockState: null == ticketUnlockState
          ? _value.ticketUnlockState
          : ticketUnlockState // ignore: cast_nullable_to_non_nullable
              as TicketUnlockState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      randomTicketLockState: null == randomTicketLockState
          ? _value.randomTicketLockState
          : randomTicketLockState // ignore: cast_nullable_to_non_nullable
              as RandomTicketLockState,
    ));
  }
}

/// @nodoc

class _$GameStateImpl with DiagnosticableTreeMixin implements _GameState {
  const _$GameStateImpl(
      {this.quarterSize = 0,
      final List<Ticket> tempTickets = const [],
      final List<TicketFilterType> ticketFilterType = const [],
      this.selectedFilterType = null,
      final List<Ticket> tickets = const [],
      this.gameId = null,
      final List<Ticket> lockedTickets = const [],
      this.ticketFetchState = FetchState.initial,
      this.lockedTicketFetchState = FetchState.initial,
      this.ticketPurchaseStatus = FormSubmissionStatus.initial,
      this.ticketLockState = const TicketLockState(),
      this.ticketUnlockState = const TicketUnlockState(),
      this.errorMessage = null,
      this.randomTicketLockState = const RandomTicketLockState()})
      : _tempTickets = tempTickets,
        _ticketFilterType = ticketFilterType,
        _tickets = tickets,
        _lockedTickets = lockedTickets;

//filter state
  @override
  @JsonKey()
  final int quarterSize;
  final List<Ticket> _tempTickets;
  @override
  @JsonKey()
  List<Ticket> get tempTickets {
    if (_tempTickets is EqualUnmodifiableListView) return _tempTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempTickets);
  }

  final List<TicketFilterType> _ticketFilterType;
  @override
  @JsonKey()
  List<TicketFilterType> get ticketFilterType {
    if (_ticketFilterType is EqualUnmodifiableListView)
      return _ticketFilterType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketFilterType);
  }

  @override
  @JsonKey()
  final TicketFilterType? selectedFilterType;
//ticket and game state
  final List<Ticket> _tickets;
//ticket and game state
  @override
  @JsonKey()
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  @JsonKey()
  final int? gameId;
  final List<Ticket> _lockedTickets;
  @override
  @JsonKey()
  List<Ticket> get lockedTickets {
    if (_lockedTickets is EqualUnmodifiableListView) return _lockedTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lockedTickets);
  }

  @override
  @JsonKey()
  final FetchState ticketFetchState;
  @override
  @JsonKey()
  final FetchState lockedTicketFetchState;
  @override
  @JsonKey()
  final FormSubmissionStatus ticketPurchaseStatus;
  @override
  @JsonKey()
  final TicketLockState ticketLockState;
  @override
  @JsonKey()
  final TicketUnlockState ticketUnlockState;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final RandomTicketLockState randomTicketLockState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState(quarterSize: $quarterSize, tempTickets: $tempTickets, ticketFilterType: $ticketFilterType, selectedFilterType: $selectedFilterType, tickets: $tickets, gameId: $gameId, lockedTickets: $lockedTickets, ticketFetchState: $ticketFetchState, lockedTicketFetchState: $lockedTicketFetchState, ticketPurchaseStatus: $ticketPurchaseStatus, ticketLockState: $ticketLockState, ticketUnlockState: $ticketUnlockState, errorMessage: $errorMessage, randomTicketLockState: $randomTicketLockState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState'))
      ..add(DiagnosticsProperty('quarterSize', quarterSize))
      ..add(DiagnosticsProperty('tempTickets', tempTickets))
      ..add(DiagnosticsProperty('ticketFilterType', ticketFilterType))
      ..add(DiagnosticsProperty('selectedFilterType', selectedFilterType))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('gameId', gameId))
      ..add(DiagnosticsProperty('lockedTickets', lockedTickets))
      ..add(DiagnosticsProperty('ticketFetchState', ticketFetchState))
      ..add(
          DiagnosticsProperty('lockedTicketFetchState', lockedTicketFetchState))
      ..add(DiagnosticsProperty('ticketPurchaseStatus', ticketPurchaseStatus))
      ..add(DiagnosticsProperty('ticketLockState', ticketLockState))
      ..add(DiagnosticsProperty('ticketUnlockState', ticketUnlockState))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(
          DiagnosticsProperty('randomTicketLockState', randomTicketLockState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.quarterSize, quarterSize) ||
                other.quarterSize == quarterSize) &&
            const DeepCollectionEquality()
                .equals(other._tempTickets, _tempTickets) &&
            const DeepCollectionEquality()
                .equals(other._ticketFilterType, _ticketFilterType) &&
            (identical(other.selectedFilterType, selectedFilterType) ||
                other.selectedFilterType == selectedFilterType) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            const DeepCollectionEquality()
                .equals(other._lockedTickets, _lockedTickets) &&
            (identical(other.ticketFetchState, ticketFetchState) ||
                other.ticketFetchState == ticketFetchState) &&
            (identical(other.lockedTicketFetchState, lockedTicketFetchState) ||
                other.lockedTicketFetchState == lockedTicketFetchState) &&
            (identical(other.ticketPurchaseStatus, ticketPurchaseStatus) ||
                other.ticketPurchaseStatus == ticketPurchaseStatus) &&
            (identical(other.ticketLockState, ticketLockState) ||
                other.ticketLockState == ticketLockState) &&
            (identical(other.ticketUnlockState, ticketUnlockState) ||
                other.ticketUnlockState == ticketUnlockState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.randomTicketLockState, randomTicketLockState) ||
                other.randomTicketLockState == randomTicketLockState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      quarterSize,
      const DeepCollectionEquality().hash(_tempTickets),
      const DeepCollectionEquality().hash(_ticketFilterType),
      selectedFilterType,
      const DeepCollectionEquality().hash(_tickets),
      gameId,
      const DeepCollectionEquality().hash(_lockedTickets),
      ticketFetchState,
      lockedTicketFetchState,
      ticketPurchaseStatus,
      ticketLockState,
      ticketUnlockState,
      errorMessage,
      randomTicketLockState);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final int quarterSize,
      final List<Ticket> tempTickets,
      final List<TicketFilterType> ticketFilterType,
      final TicketFilterType? selectedFilterType,
      final List<Ticket> tickets,
      final int? gameId,
      final List<Ticket> lockedTickets,
      final FetchState ticketFetchState,
      final FetchState lockedTicketFetchState,
      final FormSubmissionStatus ticketPurchaseStatus,
      final TicketLockState ticketLockState,
      final TicketUnlockState ticketUnlockState,
      final String? errorMessage,
      final RandomTicketLockState randomTicketLockState}) = _$GameStateImpl;

//filter state
  @override
  int get quarterSize;
  @override
  List<Ticket> get tempTickets;
  @override
  List<TicketFilterType> get ticketFilterType;
  @override
  TicketFilterType? get selectedFilterType; //ticket and game state
  @override
  List<Ticket> get tickets;
  @override
  int? get gameId;
  @override
  List<Ticket> get lockedTickets;
  @override
  FetchState get ticketFetchState;
  @override
  FetchState get lockedTicketFetchState;
  @override
  FormSubmissionStatus get ticketPurchaseStatus;
  @override
  TicketLockState get ticketLockState;
  @override
  TicketUnlockState get ticketUnlockState;
  @override
  String? get errorMessage;
  @override
  RandomTicketLockState get randomTicketLockState;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketUnlockState {
  FormSubmissionStatus get formSubmissionStatus =>
      throw _privateConstructorUsedError;
  Ticket? get ticket => throw _privateConstructorUsedError;

  /// Create a copy of TicketUnlockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketUnlockStateCopyWith<TicketUnlockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketUnlockStateCopyWith<$Res> {
  factory $TicketUnlockStateCopyWith(
          TicketUnlockState value, $Res Function(TicketUnlockState) then) =
      _$TicketUnlockStateCopyWithImpl<$Res, TicketUnlockState>;
  @useResult
  $Res call({FormSubmissionStatus formSubmissionStatus, Ticket? ticket});

  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class _$TicketUnlockStateCopyWithImpl<$Res, $Val extends TicketUnlockState>
    implements $TicketUnlockStateCopyWith<$Res> {
  _$TicketUnlockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketUnlockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSubmissionStatus = null,
    Object? ticket = freezed,
  }) {
    return _then(_value.copyWith(
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
    ) as $Val);
  }

  /// Create a copy of TicketUnlockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketUnlockStateImplCopyWith<$Res>
    implements $TicketUnlockStateCopyWith<$Res> {
  factory _$$TicketUnlockStateImplCopyWith(_$TicketUnlockStateImpl value,
          $Res Function(_$TicketUnlockStateImpl) then) =
      __$$TicketUnlockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormSubmissionStatus formSubmissionStatus, Ticket? ticket});

  @override
  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class __$$TicketUnlockStateImplCopyWithImpl<$Res>
    extends _$TicketUnlockStateCopyWithImpl<$Res, _$TicketUnlockStateImpl>
    implements _$$TicketUnlockStateImplCopyWith<$Res> {
  __$$TicketUnlockStateImplCopyWithImpl(_$TicketUnlockStateImpl _value,
      $Res Function(_$TicketUnlockStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketUnlockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSubmissionStatus = null,
    Object? ticket = freezed,
  }) {
    return _then(_$TicketUnlockStateImpl(
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
    ));
  }
}

/// @nodoc

class _$TicketUnlockStateImpl
    with DiagnosticableTreeMixin
    implements _TicketUnlockState {
  const _$TicketUnlockStateImpl(
      {this.formSubmissionStatus = FormSubmissionStatus.initial,
      this.ticket = null});

  @override
  @JsonKey()
  final FormSubmissionStatus formSubmissionStatus;
  @override
  @JsonKey()
  final Ticket? ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketUnlockState(formSubmissionStatus: $formSubmissionStatus, ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketUnlockState'))
      ..add(DiagnosticsProperty('formSubmissionStatus', formSubmissionStatus))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketUnlockStateImpl &&
            (identical(other.formSubmissionStatus, formSubmissionStatus) ||
                other.formSubmissionStatus == formSubmissionStatus) &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formSubmissionStatus, ticket);

  /// Create a copy of TicketUnlockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketUnlockStateImplCopyWith<_$TicketUnlockStateImpl> get copyWith =>
      __$$TicketUnlockStateImplCopyWithImpl<_$TicketUnlockStateImpl>(
          this, _$identity);
}

abstract class _TicketUnlockState implements TicketUnlockState {
  const factory _TicketUnlockState(
      {final FormSubmissionStatus formSubmissionStatus,
      final Ticket? ticket}) = _$TicketUnlockStateImpl;

  @override
  FormSubmissionStatus get formSubmissionStatus;
  @override
  Ticket? get ticket;

  /// Create a copy of TicketUnlockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketUnlockStateImplCopyWith<_$TicketUnlockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketLockState {
  FormSubmissionStatus get formSubmissionStatus =>
      throw _privateConstructorUsedError;
  Ticket? get ticket => throw _privateConstructorUsedError;

  /// Create a copy of TicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketLockStateCopyWith<TicketLockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketLockStateCopyWith<$Res> {
  factory $TicketLockStateCopyWith(
          TicketLockState value, $Res Function(TicketLockState) then) =
      _$TicketLockStateCopyWithImpl<$Res, TicketLockState>;
  @useResult
  $Res call({FormSubmissionStatus formSubmissionStatus, Ticket? ticket});

  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class _$TicketLockStateCopyWithImpl<$Res, $Val extends TicketLockState>
    implements $TicketLockStateCopyWith<$Res> {
  _$TicketLockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSubmissionStatus = null,
    Object? ticket = freezed,
  }) {
    return _then(_value.copyWith(
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
    ) as $Val);
  }

  /// Create a copy of TicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketLockStateImplCopyWith<$Res>
    implements $TicketLockStateCopyWith<$Res> {
  factory _$$TicketLockStateImplCopyWith(_$TicketLockStateImpl value,
          $Res Function(_$TicketLockStateImpl) then) =
      __$$TicketLockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormSubmissionStatus formSubmissionStatus, Ticket? ticket});

  @override
  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class __$$TicketLockStateImplCopyWithImpl<$Res>
    extends _$TicketLockStateCopyWithImpl<$Res, _$TicketLockStateImpl>
    implements _$$TicketLockStateImplCopyWith<$Res> {
  __$$TicketLockStateImplCopyWithImpl(
      _$TicketLockStateImpl _value, $Res Function(_$TicketLockStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSubmissionStatus = null,
    Object? ticket = freezed,
  }) {
    return _then(_$TicketLockStateImpl(
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
    ));
  }
}

/// @nodoc

class _$TicketLockStateImpl
    with DiagnosticableTreeMixin
    implements _TicketLockState {
  const _$TicketLockStateImpl(
      {this.formSubmissionStatus = FormSubmissionStatus.initial,
      this.ticket = null});

  @override
  @JsonKey()
  final FormSubmissionStatus formSubmissionStatus;
  @override
  @JsonKey()
  final Ticket? ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketLockState(formSubmissionStatus: $formSubmissionStatus, ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketLockState'))
      ..add(DiagnosticsProperty('formSubmissionStatus', formSubmissionStatus))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketLockStateImpl &&
            (identical(other.formSubmissionStatus, formSubmissionStatus) ||
                other.formSubmissionStatus == formSubmissionStatus) &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formSubmissionStatus, ticket);

  /// Create a copy of TicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketLockStateImplCopyWith<_$TicketLockStateImpl> get copyWith =>
      __$$TicketLockStateImplCopyWithImpl<_$TicketLockStateImpl>(
          this, _$identity);
}

abstract class _TicketLockState implements TicketLockState {
  const factory _TicketLockState(
      {final FormSubmissionStatus formSubmissionStatus,
      final Ticket? ticket}) = _$TicketLockStateImpl;

  @override
  FormSubmissionStatus get formSubmissionStatus;
  @override
  Ticket? get ticket;

  /// Create a copy of TicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketLockStateImplCopyWith<_$TicketLockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RandomTicketLockState {
  FormSubmissionStatus get formSubmissionStatus =>
      throw _privateConstructorUsedError;
  Ticket? get ticket => throw _privateConstructorUsedError;

  /// Create a copy of RandomTicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomTicketLockStateCopyWith<RandomTicketLockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomTicketLockStateCopyWith<$Res> {
  factory $RandomTicketLockStateCopyWith(RandomTicketLockState value,
          $Res Function(RandomTicketLockState) then) =
      _$RandomTicketLockStateCopyWithImpl<$Res, RandomTicketLockState>;
  @useResult
  $Res call({FormSubmissionStatus formSubmissionStatus, Ticket? ticket});

  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class _$RandomTicketLockStateCopyWithImpl<$Res,
        $Val extends RandomTicketLockState>
    implements $RandomTicketLockStateCopyWith<$Res> {
  _$RandomTicketLockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomTicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSubmissionStatus = null,
    Object? ticket = freezed,
  }) {
    return _then(_value.copyWith(
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
    ) as $Val);
  }

  /// Create a copy of RandomTicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RandomTicketLockStateImplCopyWith<$Res>
    implements $RandomTicketLockStateCopyWith<$Res> {
  factory _$$RandomTicketLockStateImplCopyWith(
          _$RandomTicketLockStateImpl value,
          $Res Function(_$RandomTicketLockStateImpl) then) =
      __$$RandomTicketLockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormSubmissionStatus formSubmissionStatus, Ticket? ticket});

  @override
  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class __$$RandomTicketLockStateImplCopyWithImpl<$Res>
    extends _$RandomTicketLockStateCopyWithImpl<$Res,
        _$RandomTicketLockStateImpl>
    implements _$$RandomTicketLockStateImplCopyWith<$Res> {
  __$$RandomTicketLockStateImplCopyWithImpl(_$RandomTicketLockStateImpl _value,
      $Res Function(_$RandomTicketLockStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomTicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSubmissionStatus = null,
    Object? ticket = freezed,
  }) {
    return _then(_$RandomTicketLockStateImpl(
      formSubmissionStatus: null == formSubmissionStatus
          ? _value.formSubmissionStatus
          : formSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
    ));
  }
}

/// @nodoc

class _$RandomTicketLockStateImpl
    with DiagnosticableTreeMixin
    implements _RandomTicketLockState {
  const _$RandomTicketLockStateImpl(
      {this.formSubmissionStatus = FormSubmissionStatus.initial,
      this.ticket = null});

  @override
  @JsonKey()
  final FormSubmissionStatus formSubmissionStatus;
  @override
  @JsonKey()
  final Ticket? ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RandomTicketLockState(formSubmissionStatus: $formSubmissionStatus, ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RandomTicketLockState'))
      ..add(DiagnosticsProperty('formSubmissionStatus', formSubmissionStatus))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomTicketLockStateImpl &&
            (identical(other.formSubmissionStatus, formSubmissionStatus) ||
                other.formSubmissionStatus == formSubmissionStatus) &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formSubmissionStatus, ticket);

  /// Create a copy of RandomTicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomTicketLockStateImplCopyWith<_$RandomTicketLockStateImpl>
      get copyWith => __$$RandomTicketLockStateImplCopyWithImpl<
          _$RandomTicketLockStateImpl>(this, _$identity);
}

abstract class _RandomTicketLockState implements RandomTicketLockState {
  const factory _RandomTicketLockState(
      {final FormSubmissionStatus formSubmissionStatus,
      final Ticket? ticket}) = _$RandomTicketLockStateImpl;

  @override
  FormSubmissionStatus get formSubmissionStatus;
  @override
  Ticket? get ticket;

  /// Create a copy of RandomTicketLockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomTicketLockStateImplCopyWith<_$RandomTicketLockStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
