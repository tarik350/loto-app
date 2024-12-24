// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as int,
      fullName: fields[1] as String,
      phone: fields[2] as String,
      profilePicture: fields[3] as String?,
      phoneVerified: fields[4] as bool?,
      createdAt: fields[5] as DateTime,
      updatedAt: fields[6] as DateTime,
      balance: fields[7] as int?,
      isSuspended: fields[8] as bool?,
      token: fields[9] as String?,
      refreshToken: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.profilePicture)
      ..writeByte(4)
      ..write(obj.phoneVerified)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.balance)
      ..writeByte(8)
      ..write(obj.isSuspended)
      ..writeByte(9)
      ..write(obj.token)
      ..writeByte(10)
      ..write(obj.refreshToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['full_name'] as String,
      phone: json['phone'] as String,
      profilePicture: json['profile_picture'] as String?,
      phoneVerified: json['phone_verified'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      balance: (json['balance'] as num?)?.toInt(),
      isSuspended: json['is_suspended'] as bool?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'profile_picture': instance.profilePicture,
      'phone_verified': instance.phoneVerified,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'balance': instance.balance,
      'is_suspended': instance.isSuspended,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
