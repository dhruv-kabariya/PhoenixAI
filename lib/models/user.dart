import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable(nullable: false)
@HiveType(typeId: 1)
class User extends Equatable {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String password;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String github;
  @HiveField(4)
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
