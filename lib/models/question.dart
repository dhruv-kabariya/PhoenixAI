import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'question.g.dart';

@JsonSerializable(nullable: false)
class Question extends Equatable {
  final int q_id;
  final int post_id;
  final int creators_id;
  final DateTime time;
  final int no_of_answer;
  final String question;

  Question({
    @required this.q_id,
    @required this.post_id,
    @required this.creators_id,
    @required this.time,
    @required this.no_of_answer,
    @required this.question,
  });

  @override
  List<Object> get props =>
      [q_id, post_id, creators_id, no_of_answer, time, question];

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
