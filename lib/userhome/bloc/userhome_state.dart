part of 'userhome_bloc.dart';

abstract class UserhomeState extends Equatable {
  const UserhomeState();

  @override
  List<Object> get props => [];
}

class UserhomeInitial extends UserhomeState {}

class UserhomeLoading extends UserhomeState {}

class UserhomeLoaded extends UserhomeState {}
