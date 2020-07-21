import 'dart:async';

import 'package:ai/models/post.dart';
import 'package:ai/services/postServices.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostServices postServices;

  PostBloc({@required this.postServices})
      : assert(postServices != null),
        super(PostInitial());

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    if (event is GetPost) {
      yield* _mapToGetPostState();
    } else if (event is GetMorePost) {
      yield* _mapGetMorePostToState();
    } else if (event is BookMark) {
      yield* _mapBookMarkTostate(event.id);
    }
  }

  Stream<PostState> _mapToGetPostState() async* {
    yield PostLoading();
    try {
      List<Post> list = await postServices.fetchPost();
      yield PostLoaded(postList: list);
    } catch (e) {
      print(e);
      yield FailPostLoading(error: e);
    }
  }

  Stream<PostState> _mapGetMorePostToState() async* {
    yield MorePostLoading();
    try {
      List<Post> list = await postServices.fetchMorePost();
      yield MorePostLoaded(list: list);
    } catch (e) {
      yield FailMorePostLoading(error: e);
    }
  }

  Stream<PostState> _mapBookMarkTostate(int id) async* {
    yield AddingBookMark(id: id);

    yield AddedBookMark(id: id);
  }
}
