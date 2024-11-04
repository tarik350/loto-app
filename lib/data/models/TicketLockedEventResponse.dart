class TicketLockedResponse {
  final Ticket ticket;
  final User user;
  final Game game;

  TicketLockedResponse(
      {required this.ticket, required this.user, required this.game});

  // Factory method to create an instance from JSON data
  factory TicketLockedResponse.fromJson(Map<String, dynamic> json) {
    return TicketLockedResponse(
      ticket: Ticket.fromJson(json['ticket']),
      user: User.fromJson(json['user']),
      game: Game.fromJson(json['game']),
    );
  }
}

class Ticket {
  final int id;
  final int gameId;
  final int ticketNumber;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int userId;
  final DateTime? lockExpiresAt;
  final DateTime? soldAt;

  Ticket({
    required this.id,
    required this.gameId,
    required this.ticketNumber,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    this.lockExpiresAt,
    this.soldAt,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return Ticket(
      id: json['id'],
      gameId: json['game_id'],
      ticketNumber: json['ticket_number'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      userId: json['user_id'],
      lockExpiresAt: json['lock_expires_at'] != null
          ? DateTime.parse(json['lock_expires_at'])
          : null,
      soldAt: json['sold_at'] != null ? DateTime.parse(json['sold_at']) : null,
    );
  }
}

class User {
  final int id;
  final String fullName;
  final String phone;
  final String? profilePicture;
  final bool phoneVerified;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int balance;

  User({
    required this.id,
    required this.fullName,
    required this.phone,
    this.profilePicture,
    required this.phoneVerified,
    required this.createdAt,
    required this.updatedAt,
    required this.balance,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      fullName: json['full_name'],
      phone: json['phone'],
      profilePicture: json['profile_picture'],
      phoneVerified: json['phone_verified'] == 1,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      balance: json['balance'],
    );
  }
}

class Game {
  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String status;
  final int categoryId;
  final String name;
  final int soldTicketCount;
  final int? firstPlaceWinnerId;
  final int? secondPlaceWinnerId;
  final int? thirdPlaceWinnerId;

  Game({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.categoryId,
    required this.name,
    required this.soldTicketCount,
    this.firstPlaceWinnerId,
    this.secondPlaceWinnerId,
    this.thirdPlaceWinnerId,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      status: json['status'],
      categoryId: json['category_id'],
      name: json['name'],
      soldTicketCount: json['sold_ticket_count'],
      firstPlaceWinnerId: json['first_place_winner_id'],
      secondPlaceWinnerId: json['second_place_winner_id'],
      thirdPlaceWinnerId: json['third_place_winner_id'],
    );
  }
}
