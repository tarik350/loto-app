import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';

part 'game_category.g.dart';

@JsonSerializable()
class GameCategory extends Equatable {
  final int? id;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'title_en')
  final String? titleEn;
  @JsonKey(name: 'title_am')
  final String? titleAm;
  @JsonKey(name: 'winning_prize')
  final String? winningPrize;
  @JsonKey(name: 'second_winning_prize')
  final String? secondWinningPrize;
  @JsonKey(name: 'third_winning_prize')
  final String? thirdWinningPrize;
  @JsonKey(name: 'ticket_price')
  final String? ticketPrice;
  @JsonKey(name: 'ticket_count')
  final String? ticketCount;
  @JsonKey(name: 'game_duration')
  final String? gameDuration;
  @JsonKey(name: 'games_count')
  final int? gamesCount;
  final List<Game>? games;

  const GameCategory({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.titleEn,
    this.titleAm,
    this.winningPrize,
    this.secondWinningPrize,
    this.thirdWinningPrize,
    this.ticketPrice,
    this.ticketCount,
    this.gameDuration,
    this.gamesCount,
    this.games,
  });

  factory GameCategory.fromJson(Map<String, dynamic> json) {
    return _$GameCategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GameCategoryToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
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
      games,
    ];
  }
}
