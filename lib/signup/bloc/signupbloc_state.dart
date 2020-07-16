part of 'signupbloc_bloc.dart';

@immutable
abstract class SignupblocState extends Equatable {
  @override
  List<Object> get props => [];
}

class SignupblocInitial extends SignupblocState {}

class SignUpInProgress extends SignupblocState {}

class SignUpLinkCardUpdate extends SignupblocState {}

class SingupLinkCardState extends SignupblocInitial {}

class SignUpFailure extends SignupblocState {
  String error;

  SignUpFailure({@required this.error});

  @override
  List<Object> get props => [error];
}
