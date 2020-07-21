part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();
  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final List<Post> postList;
  const PostLoaded({@required this.postList});
  @override
  // TODO: implement props
  List<Object> get props => postList;
}

class FailPostLoading extends PostState {
  final String error;
  FailPostLoading({@required this.error});
  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class MorePostLoading extends PostState {}

class MorePostLoaded extends PostState {
  final List<Post> list;
  const MorePostLoaded({@required this.list});
  @override
  // TODO: implement props
  List<Object> get props => [list];
}

class FailMorePostLoading extends PostState {
  final String error;
  const FailMorePostLoading({@required this.error});
  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class AddingBookMark extends PostInitial {
  final int id;
  AddingBookMark({@required this.id});

  @override
  List<Object> get props => [id];
}

class AddedBookMark extends PostState {
  final int id;
  AddedBookMark({@required this.id});

  @override
  List<Object> get props => [id];
}
