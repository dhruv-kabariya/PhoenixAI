part of 'answer_bloc.dart';

abstract class AnswerState extends Equatable {
  const AnswerState();
}

class AnswerInitial extends AnswerState {
  @override
  List<Object> get props => [];
}
