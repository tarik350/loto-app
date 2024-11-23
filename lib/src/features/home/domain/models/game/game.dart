import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';

@JsonSerializable()
class Game extends Equatable {
  final int? id;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'category_id')
  final int? categoryId;
  final String? name;
  @JsonKey(name: 'sold_ticket_count')
  final int? soldTicketCount;
  @JsonKey(name: 'first_place_winner_id')
  final dynamic firstPlaceWinnerId;
  @JsonKey(name: 'second_place_winner_id')
  final dynamic secondPlaceWinnerId;
  @JsonKey(name: 'third_place_winner_id')
  final dynamic thirdPlaceWinnerId;
  final String? status;
  @JsonKey(name: 'winning_video_url')
  final String? winningVideoUrl;

  const Game({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.categoryId,
    this.name,
    this.soldTicketCount,
    this.firstPlaceWinnerId,
    this.secondPlaceWinnerId,
    this.thirdPlaceWinnerId,
    this.status,
    this.winningVideoUrl,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);

  Game copyWith({
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? categoryId,
    String? name,
    int? soldTicketCount,
    dynamic firstPlaceWinnerId,
    dynamic secondPlaceWinnerId,
    dynamic thirdPlaceWinnerId,
    String? status,
    String? winningVideoUrl,
  }) {
    return Game(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      soldTicketCount: soldTicketCount ?? this.soldTicketCount,
      firstPlaceWinnerId: firstPlaceWinnerId ?? this.firstPlaceWinnerId,
      secondPlaceWinnerId: secondPlaceWinnerId ?? this.secondPlaceWinnerId,
      thirdPlaceWinnerId: thirdPlaceWinnerId ?? this.thirdPlaceWinnerId,
      status: status ?? this.status,
      winningVideoUrl: winningVideoUrl ?? this.winningVideoUrl,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      createdAt,
      updatedAt,
      categoryId,
      name,
      soldTicketCount,
      firstPlaceWinnerId,
      secondPlaceWinnerId,
      thirdPlaceWinnerId,
      status,
      winningVideoUrl,
    ];
  }
}
