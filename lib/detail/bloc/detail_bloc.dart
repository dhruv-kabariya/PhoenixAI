import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailInitial());

  @override
  Stream<DetailState> mapEventToState(
    DetailEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
