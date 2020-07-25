part of 'trycode_bloc.dart';

abstract class TrycodeState extends Equatable {
  const TrycodeState();
  @override
  List<Object> get props => [];
}

class TrycodeInitial extends TrycodeState {}

class TryListLoading extends TrycodeState {}

class TryListLoaded extends TrycodeState {
  final List<Try> list;
  const TryListLoaded({@required this.list});
  @override
  // TODO: implement props
  List<Object> get props => [list];
}

class FailListLoading extends TrycodeState {
  final String error;
  const FailListLoading({@required this.error});
  @override
  // TODO: implement props
  List<Object> get props => [];
}
