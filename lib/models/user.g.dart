// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 1;

  @override
  User read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      name: fields[0] as String,
      password: fields[1] as String,
      email: fields[2] as String,
      github: fields[3] as String,
      linkedin: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.password)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.github)
      ..writeByte(4)
      ..write(obj.linkedin);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['name'] as String,
    password: json['password'] as String,
    email: json['email'] as String,
    github: json['github'] as String,
    linkedin: json['linkedin'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'email': instance.email,
      'github': instance.github,
      'linkedin': instance.linkedin,
    };
