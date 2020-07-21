import 'package:ai/models/otheruser.dart';
// import 'package:ai/models/question.dart';
// import 'package:ai/models/try.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class Post extends Equatable {
  final int id;
  final OtherUser creators_id;
  final List<OtherUser> contributors_list;
  final DateTime timecreated;
  final String title;
  final String about;
  final String explanation;
  final String github_repo_link;
  final List<String> tags;
  final List<String> expected_use;
  final int no_of_try;
  final int no_of_star;
  final int no_of_question;
  // List<Question> question_list;
  //  List<Try> try_list;

  Post(
      {@required this.id,
      @required this.creators_id,
      @required this.contributors_list,
      @required this.timecreated,
      @required this.title,
      @required this.about,
      @required this.explanation,
      @required this.expected_use,
      @required this.github_repo_link,
      @required this.no_of_question,
      @required this.no_of_star,
      @required this.no_of_try,
      @required this.tags});

  @override
  // TODO: implement props
  List<Object> get props => [
        id,
        creators_id,
        contributors_list,
        timecreated,
        title,
        about,
        explanation,
        expected_use,
        github_repo_link,
        no_of_question,
        no_of_star,
        no_of_try,
        tags,
      ];
}
