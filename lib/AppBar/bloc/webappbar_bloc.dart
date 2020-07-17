import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'webappbar_event.dart';
part 'webappbar_state.dart';

class WebappbarBloc extends Bloc<WebappbarEvent, WebappbarState> {
  WebappbarBloc() : super(WebappbarInitial());

  @override
  Stream<WebappbarState> mapEventToState(
    WebappbarEvent event,
  ) async* {
    if (event is SearchQuery) {
      yield* _mapSearchQueryToState(event.query);
    }
  }

  Stream<SearchState> _mapSearchQueryToState(String query) async* {
    yield SearchLoading();

    try {
      String res = "hello";
      yield SearchResult(result: res);
    } catch (e) {
      print(e);
      yield SearchError(error: e);
    }
  }
}
