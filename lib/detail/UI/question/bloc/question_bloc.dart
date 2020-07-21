import 'dart:async';

import 'package:ai/models/question.dart';
import 'package:ai/services/QuestionService.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc({
    @required this.questionService,
  })  : assert(questionService != null),
        super(QuestionInitial());

  final QuestionService questionService;

  @override
  Stream<QuestionState> mapEventToState(
    QuestionEvent event,
  ) async* {
    if (event is GetQuestions) {
      yield* _mapGetQuestionToState();
    } else if (event is GetMoreQuestions) {
      yield* _mapGetMoreQuestionToState();
    } else if (event is AdjustQuestion) {
      yield* _mapAdjustQuestionToState();
    }
  }

  Stream<QuestionState> _mapGetQuestionToState() async* {
    yield QuestionLoading();
    try {
      List<Question> list = await questionService.fetchQuestionList();
      yield QuestionLoaded(list: list);
    } catch (e) {
      yield FailQuestionLoading(error: e);
    }
  }

  Stream<QuestionState> _mapGetMoreQuestionToState() async* {
    yield MoreQuestionLoading();
    try {
      List<Question> list = await questionService.fechMoreQuestionList();
      yield MoreQuestionLoaded(list: list);
    } catch (e) {
      yield FailMoreQuestionLoading(error: e);
    }
  }

  Stream<QuestionState> _mapAdjustQuestionToState() async* {}
}
