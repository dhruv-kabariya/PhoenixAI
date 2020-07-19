import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Try extends Equatable {
  final int id;
  final int post_id;
  final int creator_id;

  final String what_new_short;
  final String what_new_indetail;
  final String what_new_found_short;
  final String what_new_found_detail;
  final String github_link;
  final List<String> photos;
  final List<String> videos;
  final String explanation;
  final String time;

  Try({
    @required this.id,
    @required this.creator_id,
    @required this.post_id,
    @required this.time,
    @required this.what_new_short,
    @required this.what_new_indetail,
    @required this.what_new_found_detail,
    @required this.what_new_found_short,
    @required this.explanation,
    @required this.github_link,
    @required this.photos,
    @required this.videos,
  });

  @override
  List<Object> get props => [
        id,
        creator_id,
        post_id,
        time,
        what_new_found_detail,
        what_new_found_short,
        what_new_indetail,
        what_new_short,
        explanation,
        github_link,
        photos,
        videos
      ];
}
