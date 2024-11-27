import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
class User with _$User {
  const factory User({
    required int id,
    @JsonKey(name: 'full_name') required String fullName,
    required String phone,
    @JsonKey(name: "profile_picture") String? profilePicture,
    @JsonKey(name: 'phone_verified') bool? phoneVerified,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    int? balance,
    @JsonKey(name: 'is_suspended') bool? isSuspended,
    String? token,
    String? refreshToken,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
