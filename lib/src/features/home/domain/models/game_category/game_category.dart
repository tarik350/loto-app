import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';

part 'game_category.freezed.dart';
part 'game_category.g.dart';

@Freezed(genericArgumentFactories: true)
class GameCategory with _$GameCategory {
  const factory GameCategory(
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
      List<Game>? games}) = _GameCategory;

  factory GameCategory.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GameCategoryFromJson(json);
}
