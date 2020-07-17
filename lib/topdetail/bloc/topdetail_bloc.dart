import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'topdetail_event.dart';
part 'topdetail_state.dart';

class TopdetailBloc extends Bloc<TopdetailEvent, TopdetailState> {
  TopdetailBloc() : super(TopdetailInitial());

  @override
  Stream<TopdetailState> mapEventToState(
    TopdetailEvent event,
  ) async* {
    _mapTopDetailgetData();
  }

  Stream<TopdetailState> _mapTopDetailgetData() async* {
    yield TopdetailLoading();
    yield TopdetailLoaded();
  }
}
