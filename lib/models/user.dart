import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable(nullable: false)
class User extends Equatable {
  final String name;
  final String password;
  final String email;
  final String github;
  final String linkedin;

  User({
    this.name,
    this.password,
    this.email,
    this.github,
    this.linkedin,
  });

  @override
  List<Object> get props => [
        name,
        password,
        email,
        github,
        linkedin,
      ];

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
