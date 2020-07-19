import 'package:ai/models/location.dart';
import 'package:ai/models/question.dart';
import 'package:ai/models/try.dart';
import 'package:ai/profile/post.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Profile extends Equatable {
  final int id;
  final String username;
  final String first_name;
  final String last_name;
  final DateTime dob;
  final Location location;
  final int followers;
  final String following;
  final String github;
  final String linkedin;
  final int no_of_posts;
  List<Post> post_list;
  final int no_of_questions;
  List<Question> questions_list;
  final int no_of_try;
  List<Try> try_list;
  final List<String> tags;
  final int no_of_savedBookmark;

  Profile({
    @required this.id,
    @required this.username,
    @required this.first_name,
    @required this.last_name,
    @required this.dob,
    @required this.location,
    @required this.followers,
    @required this.following,
    @required this.github,
    @required this.linkedin,
    @required this.no_of_posts,
    @required this.no_of_questions,
    @required this.no_of_savedBookmark,
    @required this.no_of_try,
    @required this.tags,
  });

  @override
  List<Object> get props => [
        id,
        username,
        first_name,
        last_name,
        dob,
        location,
        followers,
        following,
        github,
        linkedin,
        no_of_posts,
        post_list,
        no_of_questions,
        questions_list,
        no_of_try,
        try_list,
        no_of_savedBookmark,
        tags
      ];
}
