import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'trycode_event.dart';
part 'trycode_state.dart';

class TrycodeBloc extends Bloc<TrycodeEvent, TrycodeState> {
  TrycodeBloc() : super(TrycodeInitial());

  @override
  Stream<TrycodeState> mapEventToState(
    TrycodeEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
