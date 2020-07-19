import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(QuestionInitial());

  @override
  Stream<QuestionState> mapEventToState(
    QuestionEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
