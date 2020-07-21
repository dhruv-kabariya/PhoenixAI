part of 'question_bloc.dart';

abstract class QuestionState extends Equatable {
  const QuestionState();
}

class QuestionInitial extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionFormLoadingState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionFormLoadedState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionSubmittingState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionSubmittedState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionPosting extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuesionPosted extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionLoadingImageState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionLoadedImageState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionLoadingVideoState extends QuestionState {
  @override
  List<Object> get props => [];
}

class QuestionLoadedVideoState extends QuestionState {
  @override
  List<Object> get props => [];
}
