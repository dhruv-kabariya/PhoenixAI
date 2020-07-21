import 'package:ai/models/otheruser.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Question extends Equatable {
  final int q_id;
  final int post_id;
  final OtherUser creators_id;
  final DateTime time;
  final int no_of_answer;
  final String question;
  final List<String> photos;
  final List<String> tags;

  Question({
    @required this.q_id,
    @required this.post_id,
    @required this.creators_id,
    @required this.time,
    @required this.no_of_answer,
    @required this.question,
    @required this.photos,
    @required this.tags,
  });

  @override
  List<Object> get props =>
      [q_id, post_id, creators_id, no_of_answer, time, question, photos, tags];
}
