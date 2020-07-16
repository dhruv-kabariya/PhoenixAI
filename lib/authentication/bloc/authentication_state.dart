part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenicationSuccess extends AuthenticationState {
  final String name;
  const AuthenicationSuccess(
    this.name,
  );

  List<Object> get props => [name];
}

class AuthentictionFailure extends AuthenticationState {}

class AutheticationInProgress extends AuthenticationState {}

class AuthenticationLogin extends AuthentictionFailure {}

class AuthenticationSignUp extends AuthentictionFailure {}
