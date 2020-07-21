part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class GetQuestions extends QuestionEvent {}

class GetMoreQuestions extends QuestionEvent {}

class AdjustQuestion extends QuestionEvent {}
