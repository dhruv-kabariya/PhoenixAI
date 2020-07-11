part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}
// class LoginInitial extends LoginEvent{
//   @override

//   List<Object> get props => throw UnimplementedError();
// }
class LoginPage extends LoginEvent {
  @override
  List<Object> get props => [];
}

class LoginToSignUpEvent extends LoginEvent {
  @override
  List<Object> get props => [];
}
