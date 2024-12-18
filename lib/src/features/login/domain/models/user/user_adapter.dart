import 'package:hive/hive.dart';
import 'user.dart';

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    return User(
      id: reader.readInt(),
      fullName: reader.readString(),
      phone: reader.readString(),
      profilePicture: reader.readString(),
      phoneVerified: reader.readBool(),
      createdAt: reader.read() as DateTime,
      updatedAt: reader.read() as DateTime,
      balance: reader.readInt(),
      isSuspended: reader.readBool(),
      token: reader.readString(),
      refreshToken: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.fullName);
    writer.writeString(obj.phone);
    writer.writeString(obj.profilePicture ?? '');
    writer.writeBool(obj.phoneVerified ?? false);
    writer.write(obj.createdAt);
    writer.write(obj.updatedAt);
    writer.writeInt(obj.balance ?? 0);
    writer.writeBool(obj.isSuspended ?? false);
    writer.writeString(obj.token ?? '');
    writer.writeString(obj.refreshToken ?? '');
  }
}
