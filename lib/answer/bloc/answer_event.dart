part of 'answer_bloc.dart';

abstract class AnswerEvent extends Equatable {
  const AnswerEvent();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class GetAnswer extends AnswerEvent {}
