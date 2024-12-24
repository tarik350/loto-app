import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: 0)
@Freezed()
class User with _$User {
  const factory User({
    @HiveField(0) required int id,
    @JsonKey(name: 'full_name') @HiveField(1) required String fullName,
    @HiveField(2) required String phone,
    @JsonKey(name: "profile_picture") @HiveField(3) String? profilePicture,
    @JsonKey(name: 'phone_verified') @HiveField(4) bool? phoneVerified,
    @JsonKey(name: 'created_at') @HiveField(5) required DateTime createdAt,
    @JsonKey(name: 'updated_at') @HiveField(6) required DateTime updatedAt,
    @HiveField(7) int? balance,
    @JsonKey(name: 'is_suspended') @HiveField(8) bool? isSuspended,
    @HiveField(9) String? token,
    @HiveField(10) String? refreshToken,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
