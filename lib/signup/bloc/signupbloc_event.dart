part of 'signupbloc_bloc.dart';

@immutable
abstract class SignupblocEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SingupblocInitialEvent extends SignupblocEvent {}

class SingupblocSkipEvent extends SignupblocEvent {}

class SignUpLinkCardEvent extends SignupblocEvent {}

class SignUpLinkCardUpdateEvent extends SignupblocEvent {}

class SignUpWithCredentials extends SignupblocEvent {
  final String username;
  final String password;
  SignUpWithCredentials({@required this.username, @required this.password});

  @override
  List<Object> get props => [username, password];
}

class SignUpWithGoogle extends SignupblocEvent {}

class SignUpWithGitHub extends SignupblocEvent {}

class SignUpWithLinkedIn extends SignupblocEvent {}
