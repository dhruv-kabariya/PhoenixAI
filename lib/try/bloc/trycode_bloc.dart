import 'dart:async';

import 'package:ai/models/try.dart';
import 'package:ai/services/tryServices.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'trycode_event.dart';
part 'trycode_state.dart';

class TrycodeBloc extends Bloc<TrycodeEvent, TrycodeState> {
  final TryServices tryServices;

  TrycodeBloc({@required this.tryServices}) : super(TrycodeInitial());

  @override
  Stream<TrycodeState> mapEventToState(
    TrycodeEvent event,
  ) async* {
    if (event is FetchTry) {
      yield* _mapFetchTryToState();
    }
  }

  Stream<TrycodeState> _mapFetchTryToState() async* {
    yield TryListLoading();
    try {
      List<Try> tries = await tryServices.fetchTry();

      yield TryListLoaded(list: tries);
    } catch (e) {
      yield FailListLoading(error: e);
    }
  }
}
