import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
class LoginRequestDTO with _$LoginRequestDTO {
  const factory LoginRequestDTO({
    required String phone,
    required String password,
  }) = _LoginRequestDTO;

  factory LoginRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestDTOFromJson(json);
}
