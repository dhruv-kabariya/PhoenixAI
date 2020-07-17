part of 'topdetail_bloc.dart';

abstract class TopdetailState extends Equatable {
  const TopdetailState();
  @override
  List<Object> get props => [];
}

class TopdetailInitial extends TopdetailState {}

class TopdetailLoading extends TopdetailState {}

class TopdetailLoaded extends TopdetailState {}
