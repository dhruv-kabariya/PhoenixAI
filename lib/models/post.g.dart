// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
    id: json['id'] as int,
    creators_id: json['creators_id'] as int,
    timecreated: DateTime.parse(json['timecreated'] as String),
    title: json['title'] as String,
    about: json['about'] as String,
    explanation: json['explanation'] as String,
    expected_use:
        (json['expected_use'] as List).map((e) => e as String).toList(),
    github_repo_link: json['github_repo_link'] as String,
    no_of_question: json['no_of_question'] as int,
    no_of_star: json['no_of_star'] as int,
    no_of_try: json['no_of_try'] as int,
    tags: (json['tags'] as List).map((e) => e as String).toList(),
  )
    ..contributors_list = (json['contributors_list'] as List)
        .map((e) => OtherUser.fromJson(e as Map<String, dynamic>))
        .toList()
    ..question_list = (json['question_list'] as List)
        .map((e) => Question.fromJson(e as Map<String, dynamic>))
        .toList()
    ..try_list = (json['try_list'] as List)
        .map((e) => Try.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'creators_id': instance.creators_id,
      'contributors_list': instance.contributors_list,
      'timecreated': instance.timecreated.toIso8601String(),
      'title': instance.title,
      'about': instance.about,
      'explanation': instance.explanation,
      'github_repo_link': instance.github_repo_link,
      'tags': instance.tags,
      'expected_use': instance.expected_use,
      'no_of_try': instance.no_of_try,
      'no_of_star': instance.no_of_star,
      'no_of_question': instance.no_of_question,
      'question_list': instance.question_list,
      'try_list': instance.try_list,
    };
