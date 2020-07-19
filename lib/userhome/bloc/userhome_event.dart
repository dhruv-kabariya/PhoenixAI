part of 'userhome_bloc.dart';

abstract class UserhomeEvent extends Equatable {
  const UserhomeEvent();
  @override
  List<Object> get props => [];
}

class UserhomeGetData extends UserhomeEvent {}
