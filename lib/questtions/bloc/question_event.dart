part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();
}

class QuestionSubmitEvent extends QuestionEvent {
  @override
  List<Object> get props => throw UnimplementedError();
}
