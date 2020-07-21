import 'package:ai/models/otheruser.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Answers extends Equatable {
  final int ans_id;
  final int question_id;
  final OtherUser creators_id;
  final int post_id;
  final DateTime answer_time;
  final String title;
  final String answer;
  final List<String> tags;
  final List<String> photos;

  Answers(
      {@required this.ans_id,
      @required this.question_id,
      @required this.creators_id,
      @required this.post_id,
      @required this.answer_time,
      @required this.title,
      @required this.answer,
      @required this.tags,
      @required this.photos});

  @override
  // TODO: implement props
  List<Object> get props => [
        ans_id,
        question_id,
        creators_id,
        post_id,
        answer_time,
        title,
        answer,
        tags,
        photos,
      ];
}
