// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameCategoryImpl _$$GameCategoryImplFromJson(Map<String, dynamic> json) =>
    _$GameCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      titleEn: json['title_en'] as String?,
      titleAm: json['title_am'] as String?,
      winningPrize: (json['winning_prize'] as num?)?.toInt(),
      secondWinningPrize: (json['second_winning_prize'] as num?)?.toInt(),
      thirdWinningPrize: (json['third_winning_prize'] as num?)?.toInt(),
      ticketPrice: (json['ticket_price'] as num?)?.toInt(),
      ticketCount: (json['ticket_count'] as num?)?.toInt(),
      gameDuration: json['game_duration'] as String?,
      gamesCount: (json['games_count'] as num?)?.toInt(),
      avatar: json['avatar'] as String?,
      bgColor: (json['bg_color'] as num?)?.toInt(),
      fgColor: (json['fg_color'] as num?)?.toInt(),
      games: (json['games'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GameCategoryImplToJson(_$GameCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'title_en': instance.titleEn,
      'title_am': instance.titleAm,
      'winning_prize': instance.winningPrize,
      'second_winning_prize': instance.secondWinningPrize,
      'third_winning_prize': instance.thirdWinningPrize,
      'ticket_price': instance.ticketPrice,
      'ticket_count': instance.ticketCount,
      'game_duration': instance.gameDuration,
      'games_count': instance.gamesCount,
      'avatar': instance.avatar,
      'bg_color': instance.bgColor,
      'fg_color': instance.fgColor,
      'games': instance.games,
    };
