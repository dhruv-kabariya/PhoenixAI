part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();
  @override
  List<Object> get props => [];
}

class GetPost extends PostEvent {}

class GetMorePost extends PostEvent {}

class BookMark extends PostEvent {
  final int id;
  BookMark({@required this.id});

  @override
  List<Object> get props => [id];
}
