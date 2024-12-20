import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket_status.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    @JsonKey(name: "game_id") required int gameId,
    @JsonKey(name: 'ticket_number') required int ticketNumber,
    required TicketStatus status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "lock_expires_at") DateTime? lockExpiresAt,
    @JsonKey(name: 'sold_at') DateTime? soldAt,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}
