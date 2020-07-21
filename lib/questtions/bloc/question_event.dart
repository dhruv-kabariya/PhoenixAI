part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();
}

class QuestionSubmitEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionFormLoadingEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionFormLoadedEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionSubmittingEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionSubmittedEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionLoadingImageEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionLoadedImageEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionLoadingVideoEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}

class QuestionLoadedVideoEvent extends QuestionEvent {
  @override
  List<Object> get props => [];
}
