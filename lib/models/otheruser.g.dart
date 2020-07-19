// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otheruser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherUser _$OtherUserFromJson(Map<String, dynamic> json) {
  return OtherUser(
    id: json['id'] as int,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    followers: json['followers'] as int,
    following: json['following'] as int,
    photo_link: json['photo_link'] as String,
    tags: (json['tags'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$OtherUserToJson(OtherUser instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'tags': instance.tags,
      'followers': instance.followers,
      'following': instance.following,
      'photo_link': instance.photo_link,
    };
