// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    id: json['id'] as int,
    username: json['username'] as String,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    dob: DateTime.parse(json['dob'] as String),
    location: Location.fromJson(json['location'] as Map<String, dynamic>),
    followers: json['followers'] as int,
    following: json['following'] as String,
    github: json['github'] as String,
    linkedin: json['linkedin'] as String,
    no_of_posts: json['no_of_posts'] as int,
    no_of_questions: json['no_of_questions'] as int,
    no_of_savedBookmark: json['no_of_savedBookmark'] as int,
    no_of_try: json['no_of_try'] as int,
    tags: (json['tags'] as List).map((e) => e as String).toList(),
  )
    ..post_list = (json['post_list'] as List)
        .map((e) => Post.fromJson(e as Map<String, dynamic>))
        .toList()
    ..questions_list = (json['questions_list'] as List)
        .map((e) => Question.fromJson(e as Map<String, dynamic>))
        .toList()
    ..try_list = (json['try_list'] as List)
        .map((e) => Try.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'dob': instance.dob.toIso8601String(),
      'location': instance.location,
      'followers': instance.followers,
      'following': instance.following,
      'github': instance.github,
      'linkedin': instance.linkedin,
      'no_of_posts': instance.no_of_posts,
      'post_list': instance.post_list,
      'no_of_questions': instance.no_of_questions,
      'questions_list': instance.questions_list,
      'no_of_try': instance.no_of_try,
      'try_list': instance.try_list,
      'tags': instance.tags,
      'no_of_savedBookmark': instance.no_of_savedBookmark,
    };
