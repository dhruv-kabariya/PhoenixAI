// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return Answers(
    ans_id: json['ans_id'] as int,
    question_id: json['question_id'] as int,
    creators_id: json['creators_id'] as int,
    post_id: json['post_id'] as int,
    answer_time: DateTime.parse(json['answer_time'] as String),
    title: json['title'] as String,
    answer: json['answer'] as String,
    tags: (json['tags'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$AnswersToJson(Answers instance) => <String, dynamic>{
      'ans_id': instance.ans_id,
      'question_id': instance.question_id,
      'creators_id': instance.creators_id,
      'post_id': instance.post_id,
      'answer_time': instance.answer_time.toIso8601String(),
      'title': instance.title,
      'answer': instance.answer,
      'tags': instance.tags,
    };
