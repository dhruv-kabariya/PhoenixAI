part of 'question_bloc.dart';

abstract class QuestionState extends Equatable {
  const QuestionState();

  @override
  List<Object> get props => [];
}

class QuestionInitial extends QuestionState {}

class QuestionLoading extends QuestionState {}

class QuestionLoaded extends QuestionState {
  final List<Question> list;
  const QuestionLoaded({@required this.list});

  @override
  // TODO: implement props
  List<Object> get props => [list];
}

class FailQuestionLoading extends QuestionState {
  final String error;
  const FailQuestionLoading({@required this.error});

  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class MoreQuestionLoading extends QuestionState {}

class MoreQuestionLoaded extends QuestionState {
  final List<Question> list;
  const MoreQuestionLoaded({@required this.list});
  @override
  // TODO: implement props
  List<Object> get props => [list];
}

class FailMoreQuestionLoading extends QuestionState {
  final String error;
  const FailMoreQuestionLoading({@required this.error});

  @override
  // TODO: implement props
  List<Object> get props => [error];
}

class AdjustedQuestion extends QuestionState {
  final List<Question> list;
  const AdjustedQuestion({@required this.list});
  @override
  // TODO: implement props
  List<Object> get props => [list];
}
