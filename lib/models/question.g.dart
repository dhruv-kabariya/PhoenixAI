// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return Question(
    q_id: json['q_id'] as int,
    post_id: json['post_id'] as int,
    creators_id: json['creators_id'] as int,
    time: DateTime.parse(json['time'] as String),
    no_of_answer: json['no_of_answer'] as int,
    question: json['question'] as String,
  );
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'q_id': instance.q_id,
      'post_id': instance.post_id,
      'creators_id': instance.creators_id,
      'time': instance.time.toIso8601String(),
      'no_of_answer': instance.no_of_answer,
      'question': instance.question,
    };
