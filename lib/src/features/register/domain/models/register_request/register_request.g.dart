// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestDTOImpl _$$RegisterRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestDTOImpl(
      fullName: json['full_name'] as String,
      phoneNumber: json['phone_number'] as String,
      password: json['password'] as String,
      profilePicturePath: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$RegisterRequestDTOImplToJson(
        _$RegisterRequestDTOImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'profile_picture': instance.profilePicturePath,
    };
