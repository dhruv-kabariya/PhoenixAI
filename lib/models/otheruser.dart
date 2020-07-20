import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'otheruser.g.dart';

@JsonSerializable(nullable: false)
class OtherUser extends Equatable {
  final int id;
  final String first_name;
  final String last_name;
  final List<String> tags;
  final int followers;
  final int following;
  final String photo_link;

  OtherUser({
    @required this.id,
    @required this.first_name,
    @required this.last_name,
    @required this.followers,
    @required this.following,
    @required this.photo_link,
    @required this.tags,
  });

  @override
  List<Object> get props =>
      [id, first_name, last_name, followers, following, photo_link, tags];
  factory OtherUser.fromJson(Map<String, dynamic> json) =>
      _$OtherUserFromJson(json);
  Map<String, dynamic> toJson() => _$OtherUserToJson(this);
}
