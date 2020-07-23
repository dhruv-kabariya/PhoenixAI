part of 'answer_bloc.dart';

abstract class AnswerState extends Equatable {
  const AnswerState();

  @override
  List<Object> get props => [];
}

class AnswerInitial extends AnswerState {}

class AnswerLoading extends AnswerState {}

class AnswerLoaded extends AnswerState {
  final List<Answers> answer;
  final bool maxAnswers;

  AnswerLoaded({@required this.answer, @required this.maxAnswers});
  @override
  List<Object> get props => [answer, answer];

  AnswerLoaded copywith({List<Answers> answers, bool maxAnswers}) {
    return AnswerLoaded(
        answer: answers ?? this.answer,
        maxAnswers: maxAnswers ?? this.maxAnswers);
  }
}

class FailAnswerLoading extends AnswerState {
  final String error;

  FailAnswerLoading({@required this.error});
  @override
  // TODO: implement props
  List<Object> get props => [error];
}
