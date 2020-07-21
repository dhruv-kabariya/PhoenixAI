import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class Location extends Equatable {
  final String city;
  final String country;
  final String state;

  Location({@required this.city, @required this.state, @required this.country});

  @override
  List<Object> get props => [city, state, country];
}
