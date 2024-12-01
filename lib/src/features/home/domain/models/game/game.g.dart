// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      categoryId: (json['category_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      soldTicketCount: (json['sold_ticket_count'] as num?)?.toInt(),
      firstPlaceWinnerId: json['first_place_winner_id'],
      secondPlaceWinnerId: json['second_place_winner_id'],
      thirdPlaceWinnerId: json['third_place_winner_id'],
      status: json['status'] as String?,
      winningVideoUrl: json['winning_video_url'] as String?,
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'category_id': instance.categoryId,
      'name': instance.name,
      'sold_ticket_count': instance.soldTicketCount,
      'first_place_winner_id': instance.firstPlaceWinnerId,
      'second_place_winner_id': instance.secondPlaceWinnerId,
      'third_place_winner_id': instance.thirdPlaceWinnerId,
      'status': instance.status,
      'winning_video_url': instance.winningVideoUrl,
    };
