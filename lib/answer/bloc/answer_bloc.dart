import 'dart:async';

import 'package:ai/models/answer.dart';
import 'package:ai/services/AnswerService.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'answer_event.dart';
part 'answer_state.dart';

class AnswerBloc extends Bloc<AnswerEvent, AnswerState> {
  final AnswerService answerService;

  AnswerBloc({@required this.answerService}) : super(AnswerInitial());

  @override
  Stream<AnswerState> mapEventToState(
    AnswerEvent event,
  ) async* {
    if (event is GetAnswer) {
      try {
        if (state is AnswerInitial) {
          yield AnswerLoading();
          List<Answers> answers = await answerService.fetchAnswers(0, 4);
          yield AnswerLoaded(answer: answers, maxAnswers: false);
        }
        if (state is AnswerLoaded) {
          // yield AnswerLoading();
          // print("Yes");
          List<Answers> answers = await answerService.fetchAnswers(
              answerService.answerList.length, 4);
          print(answers.length);
          // print("Yo bro");
          yield AnswerLoaded(answer: answers, maxAnswers: false);
        }
      } catch (e) {
        print(e.toString());
        // yield FailAnswerLoading(error: e);
      }
    }
  }
}
