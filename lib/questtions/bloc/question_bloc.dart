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
    if (event is QuestionSubmittingEvent) {
      _mapToSubmitQuestionForm();
    }
    if (event is QuestionFormLoadingEvent) {
      _mapLoadingToLoadedForm();
    }
    if (event is QuestionSubmittingEvent) {
      yield QuestionSubmittingState();
    }
    if (event is QuestionLoadedImageEvent) {
      yield QuestionLoadedImageState();
    }
    if (event is QuestionLoadingImageEvent) {
      yield QuestionLoadingImageState();
    }
    if (event is QuestionLoadedVideoEvent) {
      yield QuestionLoadedVideoState();
    }
    if (event is QuestionLoadingVideoEvent) {
      yield QuestionLoadingVideoState();
    }
  }

  _mapToSubmitQuestionForm() async* {
    yield QuestionSubmittingState();
    yield QuestionSubmittedState();
  }

  _mapLoadingToLoadedForm() async* {
    yield QuestionFormLoadingState();
    yield QuestionFormLoadedState();
  }
}
