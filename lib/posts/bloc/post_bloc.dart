import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial());

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
    yield PostLoaded();
  }

  Stream<PostState> _mapGetMorePostToState() async* {
    yield MorePostLoading();

    yield MorePostLoaded();
  }

  Stream<PostState> _mapBookMarkTostate(int id) async* {
    yield AddingBookMark(id: id);

    yield AddedBookMark(id: id);
  }
}
