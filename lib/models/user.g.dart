// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

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
