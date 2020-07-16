part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class LoginWithCredential extends LoginEvent {
  final String username;
  final String password;

  const LoginWithCredential({@required this.username, @required this.password});

  @override
  List<Object> get props => [username, password];
}

class LoginWithGoogle extends LoginEvent {}

class LoginWithLinkedIn extends LoginEvent {}
