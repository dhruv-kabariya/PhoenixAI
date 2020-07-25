part of 'trycode_bloc.dart';

abstract class TrycodeEvent extends Equatable {
  const TrycodeEvent();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FetchTry extends TrycodeEvent {}

class AdjustList extends TrycodeEvent {}
