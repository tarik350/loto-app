import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  const factory Game(
      {int? id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'category_id') int? categoryId,
      String? name,
      @JsonKey(name: 'sold_ticket_count') int? soldTicketCount,
      @JsonKey(name: 'locked_tickets_count')
      int? lockedTicketsCount, // {{ edit_1 }}
      @JsonKey(name: 'free_tickets_count')
      int? freeTicketsCount, // {{ edit_2 }}
      @JsonKey(name: 'first_place_winner_id') dynamic firstPlaceWinnerId,
      @JsonKey(name: 'second_place_winner_id') dynamic secondPlaceWinnerId,
      @JsonKey(name: 'third_place_winner_id') dynamic thirdPlaceWinnerId,
      String? status,
      @JsonKey(name: 'winning_video_url') String? winningVideoUrl,
      GameCategory? category}) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
