part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginInProgress extends LoginState {}

class LoginFail extends LoginState {
  final String error;
  const LoginFail({@required this.error});

  @override
  List<Object> get props => [error];
}
