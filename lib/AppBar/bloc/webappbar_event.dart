part of 'webappbar_bloc.dart';

abstract class WebappbarEvent extends Equatable {
  const WebappbarEvent();
  @override
  List<Object> get props => [];
}

class SearchQuery extends WebappbarEvent {
  final String query;
  SearchQuery({@required this.query});
  @override
  List<Object> get props => [query];
}
