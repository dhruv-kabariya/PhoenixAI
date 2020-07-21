import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'answer_event.dart';
part 'answer_state.dart';

class AnswerBloc extends Bloc<AnswerEvent, AnswerState> {
  AnswerBloc() : super(AnswerInitial());

  @override
  Stream<AnswerState> mapEventToState(
    AnswerEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
