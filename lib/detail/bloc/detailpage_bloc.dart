import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'detailpage_event.dart';
part 'detailpage_state.dart';

class DetailpageBloc extends Bloc<DetailpageEvent, DetailpageState> {
  DetailpageBloc() : super(DetailpageInitial());

  @override
  Stream<DetailpageState> mapEventToState(
    DetailpageEvent event,
  ) async* {
    if (event is DetailpageInitial) {
      yield DetailpageInitial();
      //TODO : get the data from stream
      //after getting the data
      yield DetailPageLoadedState();
    }
  }
}
