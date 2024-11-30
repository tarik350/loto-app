import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request.freezed.dart';
part 'register_request.g.dart';

@Freezed()
class RegisterRequestDTO with _$RegisterRequestDTO {
  const factory RegisterRequestDTO({
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String password,
    @JsonKey(name: 'profile_picture') String? profilePicturePath,
  }) = _RegisterRequestDTO;

  factory RegisterRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDTOFromJson(json);
}
