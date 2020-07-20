// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'try.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Try _$TryFromJson(Map<String, dynamic> json) {
  return Try(
    id: json['id'] as int,
    creator_id: json['creator_id'] as int,
    post_id: json['post_id'] as int,
    time: json['time'] as String,
    what_new_short: json['what_new_short'] as String,
    what_new_indetail: json['what_new_indetail'] as String,
    what_new_found_detail: json['what_new_found_detail'] as String,
    what_new_found_short: json['what_new_found_short'] as String,
    explanation: json['explanation'] as String,
    github_link: json['github_link'] as String,
    photos: (json['photos'] as List).map((e) => e as String).toList(),
    videos: (json['videos'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$TryToJson(Try instance) => <String, dynamic>{
      'id': instance.id,
      'post_id': instance.post_id,
      'creator_id': instance.creator_id,
      'what_new_short': instance.what_new_short,
      'what_new_indetail': instance.what_new_indetail,
      'what_new_found_short': instance.what_new_found_short,
      'what_new_found_detail': instance.what_new_found_detail,
      'github_link': instance.github_link,
      'photos': instance.photos,
      'videos': instance.videos,
      'explanation': instance.explanation,
      'time': instance.time,
    };
