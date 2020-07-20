part of 'webappbar_bloc.dart';

abstract class WebappbarState extends Equatable {
  const WebappbarState();
  @override
  List<Object> get props => [];
}

class WebappbarInitial extends WebappbarState {}

class SearchState extends WebappbarState {}

class SearchEmpty extends SearchState {}

class SearchResult extends SearchState {
  final String result;
  SearchResult({@required this.result});
  @override
  List<Object> get props => [result];
}

class SearchLoading extends SearchState {}

class SearchError extends SearchState {
  final String error;
  SearchError({@required this.error});

  @override
  List<Object> get props => [error];
}
