// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => _$TicketImpl(
      id: (json['id'] as num).toInt(),
      gameId: (json['game_id'] as num).toInt(),
      ticketNumber: (json['ticket_number'] as num).toInt(),
      status: $enumDecode(_$TicketStatusEnumMap, json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      userId: (json['user_id'] as num?)?.toInt(),
      lockExpiresAt: json['lock_expires_at'] == null
          ? null
          : DateTime.parse(json['lock_expires_at'] as String),
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'game_id': instance.gameId,
      'ticket_number': instance.ticketNumber,
      'status': _$TicketStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user_id': instance.userId,
      'lock_expires_at': instance.lockExpiresAt?.toIso8601String(),
      'sold_at': instance.soldAt?.toIso8601String(),
    };

const _$TicketStatusEnumMap = {
  TicketStatus.sold: 'sold',
  TicketStatus.locked: 'locked',
  TicketStatus.free: 'free',
};
