import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request.freezed.dart';
part 'register_request.g.dart';

@Freezed()
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String fullName,
    required String phone,
    required String password,
    required String confirmPassword,
    required String? profilePicturePath,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
