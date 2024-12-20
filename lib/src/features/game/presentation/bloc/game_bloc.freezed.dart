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
    required TResult Function(int gameId) fetchTickets,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function(TicketFilterTypeEnum filterType) filterTicket,
    required TResult Function() selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? fetchTickets,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult? Function()? selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? fetchTickets,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnloadTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnloadTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnloadTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FilterTicketEvent value)? filterTicket,
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

class _$FetchGameTicketsImpl
    with DiagnosticableTreeMixin
    implements FetchGameTickets {
  const _$FetchGameTicketsImpl(this.gameId);

  @override
  final int gameId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.fetchTickets(gameId: $gameId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.fetchTickets'))
      ..add(DiagnosticsProperty('gameId', gameId));
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
    required TResult Function(int gameId) fetchTickets,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function(TicketFilterTypeEnum filterType) filterTicket,
    required TResult Function() selectRandomTicket,
  }) {
    return fetchTickets(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? fetchTickets,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult? Function()? selectRandomTicket,
  }) {
    return fetchTickets?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? fetchTickets,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult Function()? selectRandomTicket,
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
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnloadTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return fetchTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnloadTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return fetchTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnloadTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FilterTicketEvent value)? filterTicket,
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
  const factory FetchGameTickets(final int gameId) = _$FetchGameTicketsImpl;

  int get gameId;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchGameTicketsImplCopyWith<_$FetchGameTicketsImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(int gameId) fetchTickets,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function(TicketFilterTypeEnum filterType) filterTicket,
    required TResult Function() selectRandomTicket,
  }) {
    return lockTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? fetchTickets,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult? Function()? selectRandomTicket,
  }) {
    return lockTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? fetchTickets,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function(TicketFilterTypeEnum filterType)? filterTicket,
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
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnloadTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return lockTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnloadTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return lockTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnloadTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FilterTicketEvent value)? filterTicket,
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
abstract class _$$UnloadTicketEventImplCopyWith<$Res> {
  factory _$$UnloadTicketEventImplCopyWith(_$UnloadTicketEventImpl value,
          $Res Function(_$UnloadTicketEventImpl) then) =
      __$$UnloadTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});

  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$UnloadTicketEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$UnloadTicketEventImpl>
    implements _$$UnloadTicketEventImplCopyWith<$Res> {
  __$$UnloadTicketEventImplCopyWithImpl(_$UnloadTicketEventImpl _value,
      $Res Function(_$UnloadTicketEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$UnloadTicketEventImpl(
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

class _$UnloadTicketEventImpl
    with DiagnosticableTreeMixin
    implements UnloadTicketEvent {
  const _$UnloadTicketEventImpl(this.ticket);

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
            other is _$UnloadTicketEventImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnloadTicketEventImplCopyWith<_$UnloadTicketEventImpl> get copyWith =>
      __$$UnloadTicketEventImplCopyWithImpl<_$UnloadTicketEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) fetchTickets,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function(TicketFilterTypeEnum filterType) filterTicket,
    required TResult Function() selectRandomTicket,
  }) {
    return unlockTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? fetchTickets,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult? Function()? selectRandomTicket,
  }) {
    return unlockTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? fetchTickets,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function(TicketFilterTypeEnum filterType)? filterTicket,
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
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnloadTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return unlockTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnloadTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return unlockTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnloadTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FilterTicketEvent value)? filterTicket,
    TResult Function(SelectRandomTicket value)? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (unlockTicket != null) {
      return unlockTicket(this);
    }
    return orElse();
  }
}

abstract class UnloadTicketEvent implements GameEvent {
  const factory UnloadTicketEvent(final Ticket ticket) =
      _$UnloadTicketEventImpl;

  Ticket get ticket;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnloadTicketEventImplCopyWith<_$UnloadTicketEventImpl> get copyWith =>
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
    required TResult Function(int gameId) fetchTickets,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function(TicketFilterTypeEnum filterType) filterTicket,
    required TResult Function() selectRandomTicket,
  }) {
    return searchTicket(ticketNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? fetchTickets,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult? Function()? selectRandomTicket,
  }) {
    return searchTicket?.call(ticketNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? fetchTickets,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function(TicketFilterTypeEnum filterType)? filterTicket,
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
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnloadTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return searchTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnloadTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return searchTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnloadTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FilterTicketEvent value)? filterTicket,
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
abstract class _$$FilterTicketEventImplCopyWith<$Res> {
  factory _$$FilterTicketEventImplCopyWith(_$FilterTicketEventImpl value,
          $Res Function(_$FilterTicketEventImpl) then) =
      __$$FilterTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketFilterTypeEnum filterType});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterType = null,
  }) {
    return _then(_$FilterTicketEventImpl(
      filterType: null == filterType
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as TicketFilterTypeEnum,
    ));
  }
}

/// @nodoc

class _$FilterTicketEventImpl
    with DiagnosticableTreeMixin
    implements FilterTicketEvent {
  const _$FilterTicketEventImpl({required this.filterType});

  @override
  final TicketFilterTypeEnum filterType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.filterTicket(filterType: $filterType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.filterTicket'))
      ..add(DiagnosticsProperty('filterType', filterType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTicketEventImpl &&
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
  _$$FilterTicketEventImplCopyWith<_$FilterTicketEventImpl> get copyWith =>
      __$$FilterTicketEventImplCopyWithImpl<_$FilterTicketEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) fetchTickets,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function(TicketFilterTypeEnum filterType) filterTicket,
    required TResult Function() selectRandomTicket,
  }) {
    return filterTicket(filterType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? fetchTickets,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult? Function()? selectRandomTicket,
  }) {
    return filterTicket?.call(filterType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? fetchTickets,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult Function()? selectRandomTicket,
    required TResult orElse(),
  }) {
    if (filterTicket != null) {
      return filterTicket(filterType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGameTickets value) fetchTickets,
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnloadTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return filterTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnloadTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return filterTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnloadTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FilterTicketEvent value)? filterTicket,
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
  const factory FilterTicketEvent(
          {required final TicketFilterTypeEnum filterType}) =
      _$FilterTicketEventImpl;

  TicketFilterTypeEnum get filterType;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterTicketEventImplCopyWith<_$FilterTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(int gameId) fetchTickets,
    required TResult Function(Ticket ticket) lockTicket,
    required TResult Function(Ticket ticket) unlockTicket,
    required TResult Function(int ticketNumber) searchTicket,
    required TResult Function(TicketFilterTypeEnum filterType) filterTicket,
    required TResult Function() selectRandomTicket,
  }) {
    return selectRandomTicket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? fetchTickets,
    TResult? Function(Ticket ticket)? lockTicket,
    TResult? Function(Ticket ticket)? unlockTicket,
    TResult? Function(int ticketNumber)? searchTicket,
    TResult? Function(TicketFilterTypeEnum filterType)? filterTicket,
    TResult? Function()? selectRandomTicket,
  }) {
    return selectRandomTicket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? fetchTickets,
    TResult Function(Ticket ticket)? lockTicket,
    TResult Function(Ticket ticket)? unlockTicket,
    TResult Function(int ticketNumber)? searchTicket,
    TResult Function(TicketFilterTypeEnum filterType)? filterTicket,
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
    required TResult Function(LockTicketEvent value) lockTicket,
    required TResult Function(UnloadTicketEvent value) unlockTicket,
    required TResult Function(SearchTicketEvent value) searchTicket,
    required TResult Function(FilterTicketEvent value) filterTicket,
    required TResult Function(SelectRandomTicket value) selectRandomTicket,
  }) {
    return selectRandomTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGameTickets value)? fetchTickets,
    TResult? Function(LockTicketEvent value)? lockTicket,
    TResult? Function(UnloadTicketEvent value)? unlockTicket,
    TResult? Function(SearchTicketEvent value)? searchTicket,
    TResult? Function(FilterTicketEvent value)? filterTicket,
    TResult? Function(SelectRandomTicket value)? selectRandomTicket,
  }) {
    return selectRandomTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGameTickets value)? fetchTickets,
    TResult Function(LockTicketEvent value)? lockTicket,
    TResult Function(UnloadTicketEvent value)? unlockTicket,
    TResult Function(SearchTicketEvent value)? searchTicket,
    TResult Function(FilterTicketEvent value)? filterTicket,
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
  List<Ticket> get tickets => throw _privateConstructorUsedError;
  List<Ticket> get lockedTickets => throw _privateConstructorUsedError;
  FetchState get ticketFetchState => throw _privateConstructorUsedError;
  FormSubmissionStatus get ticketPurchaseStatus =>
      throw _privateConstructorUsedError;
  FormSubmissionStatus get ticketLockStatus =>
      throw _privateConstructorUsedError;
  Ticket? get ticketPendingForLock => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

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
      {List<Ticket> tickets,
      List<Ticket> lockedTickets,
      FetchState ticketFetchState,
      FormSubmissionStatus ticketPurchaseStatus,
      FormSubmissionStatus ticketLockStatus,
      Ticket? ticketPendingForLock,
      String? errorMessage});

  $TicketCopyWith<$Res>? get ticketPendingForLock;
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
    Object? tickets = null,
    Object? lockedTickets = null,
    Object? ticketFetchState = null,
    Object? ticketPurchaseStatus = null,
    Object? ticketLockStatus = null,
    Object? ticketPendingForLock = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      lockedTickets: null == lockedTickets
          ? _value.lockedTickets
          : lockedTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      ticketFetchState: null == ticketFetchState
          ? _value.ticketFetchState
          : ticketFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      ticketPurchaseStatus: null == ticketPurchaseStatus
          ? _value.ticketPurchaseStatus
          : ticketPurchaseStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticketLockStatus: null == ticketLockStatus
          ? _value.ticketLockStatus
          : ticketLockStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticketPendingForLock: freezed == ticketPendingForLock
          ? _value.ticketPendingForLock
          : ticketPendingForLock // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticketPendingForLock {
    if (_value.ticketPendingForLock == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_value.ticketPendingForLock!, (value) {
      return _then(_value.copyWith(ticketPendingForLock: value) as $Val);
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
      {List<Ticket> tickets,
      List<Ticket> lockedTickets,
      FetchState ticketFetchState,
      FormSubmissionStatus ticketPurchaseStatus,
      FormSubmissionStatus ticketLockStatus,
      Ticket? ticketPendingForLock,
      String? errorMessage});

  @override
  $TicketCopyWith<$Res>? get ticketPendingForLock;
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
    Object? tickets = null,
    Object? lockedTickets = null,
    Object? ticketFetchState = null,
    Object? ticketPurchaseStatus = null,
    Object? ticketLockStatus = null,
    Object? ticketPendingForLock = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$GameStateImpl(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      lockedTickets: null == lockedTickets
          ? _value._lockedTickets
          : lockedTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      ticketFetchState: null == ticketFetchState
          ? _value.ticketFetchState
          : ticketFetchState // ignore: cast_nullable_to_non_nullable
              as FetchState,
      ticketPurchaseStatus: null == ticketPurchaseStatus
          ? _value.ticketPurchaseStatus
          : ticketPurchaseStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticketLockStatus: null == ticketLockStatus
          ? _value.ticketLockStatus
          : ticketLockStatus // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      ticketPendingForLock: freezed == ticketPendingForLock
          ? _value.ticketPendingForLock
          : ticketPendingForLock // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GameStateImpl with DiagnosticableTreeMixin implements _GameState {
  const _$GameStateImpl(
      {final List<Ticket> tickets = const [],
      final List<Ticket> lockedTickets = const [],
      this.ticketFetchState = FetchState.initial,
      this.ticketPurchaseStatus = FormSubmissionStatus.initial,
      this.ticketLockStatus = FormSubmissionStatus.initial,
      this.ticketPendingForLock = null,
      this.errorMessage = null})
      : _tickets = tickets,
        _lockedTickets = lockedTickets;

  final List<Ticket> _tickets;
  @override
  @JsonKey()
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

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
  final FormSubmissionStatus ticketPurchaseStatus;
  @override
  @JsonKey()
  final FormSubmissionStatus ticketLockStatus;
  @override
  @JsonKey()
  final Ticket? ticketPendingForLock;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState(tickets: $tickets, lockedTickets: $lockedTickets, ticketFetchState: $ticketFetchState, ticketPurchaseStatus: $ticketPurchaseStatus, ticketLockStatus: $ticketLockStatus, ticketPendingForLock: $ticketPendingForLock, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState'))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('lockedTickets', lockedTickets))
      ..add(DiagnosticsProperty('ticketFetchState', ticketFetchState))
      ..add(DiagnosticsProperty('ticketPurchaseStatus', ticketPurchaseStatus))
      ..add(DiagnosticsProperty('ticketLockStatus', ticketLockStatus))
      ..add(DiagnosticsProperty('ticketPendingForLock', ticketPendingForLock))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            const DeepCollectionEquality()
                .equals(other._lockedTickets, _lockedTickets) &&
            (identical(other.ticketFetchState, ticketFetchState) ||
                other.ticketFetchState == ticketFetchState) &&
            (identical(other.ticketPurchaseStatus, ticketPurchaseStatus) ||
                other.ticketPurchaseStatus == ticketPurchaseStatus) &&
            (identical(other.ticketLockStatus, ticketLockStatus) ||
                other.ticketLockStatus == ticketLockStatus) &&
            (identical(other.ticketPendingForLock, ticketPendingForLock) ||
                other.ticketPendingForLock == ticketPendingForLock) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tickets),
      const DeepCollectionEquality().hash(_lockedTickets),
      ticketFetchState,
      ticketPurchaseStatus,
      ticketLockStatus,
      ticketPendingForLock,
      errorMessage);

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
      {final List<Ticket> tickets,
      final List<Ticket> lockedTickets,
      final FetchState ticketFetchState,
      final FormSubmissionStatus ticketPurchaseStatus,
      final FormSubmissionStatus ticketLockStatus,
      final Ticket? ticketPendingForLock,
      final String? errorMessage}) = _$GameStateImpl;

  @override
  List<Ticket> get tickets;
  @override
  List<Ticket> get lockedTickets;
  @override
  FetchState get ticketFetchState;
  @override
  FormSubmissionStatus get ticketPurchaseStatus;
  @override
  FormSubmissionStatus get ticketLockStatus;
  @override
  Ticket? get ticketPendingForLock;
  @override
  String? get errorMessage;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
