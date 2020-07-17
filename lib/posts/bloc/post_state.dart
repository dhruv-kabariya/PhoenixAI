part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();
  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {}

class MorePostLoading extends PostState {}

class MorePostLoaded extends PostState {}

class AddingBookMark extends PostInitial {
  final int id;
  AddingBookMark({@required this.id});

  @override
  // TODO: implement props
  List<Object> get props => [id];
}

class AddedBookMark extends PostState {
  final int id;
  AddedBookMark({@required this.id});

  @override
  // TODO: implement props
  List<Object> get props => [id];
}
