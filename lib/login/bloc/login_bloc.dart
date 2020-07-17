import 'dart:async';

import 'package:ai/authentication/bloc/authentication_bloc.dart';
import 'package:ai/services/userServices.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserServices userServices;
  final AuthenticationBloc authbloc;

  LoginBloc({@required this.authbloc, @required this.userServices})
      : assert(userServices != null),
        assert(authbloc != null),
        super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginWithCredential) {
      yield* _mapLoginWithCredentialsToState(event.username, event.password);
    } else if (event is LoginWithGoogle) {
      yield* _mapLoginWithGoogleToState();
    } else if (event is LoginWithLinkedIn) {
      yield* _mapLoginWithLinkedInToState();
    }
  }

  Stream<LoginState> _mapLoginWithCredentialsToState(
      String username, String password) async* {
    yield LoginInProgress();
    try {
      String token =
          await userServices.signInWithCredentials(username, password);
      authbloc.add(AuthenticationLoggedIn(token: token));
      // yield LoginInitial();
    } catch (e) {
      yield LoginFail(error: e);
    }
  }

  Stream<LoginState> _mapLoginWithGoogleToState() async* {
    yield LoginInProgress();

    try {
      String token = await userServices.signInWith3RDPart();
      authbloc.add(AuthenticationLoggedIn(token: token));
      // yield LoginInitial();
    } catch (e) {
      yield LoginFail(error: e);
    }
  }

  Stream<LoginState> _mapLoginWithLinkedInToState() async* {
    yield LoginInProgress();

    try {
      String token = await userServices.signInWith3RDPart();
      authbloc.add(AuthenticationLoggedIn(token: token));
      // yield LoginInitial();
    } catch (e) {
      yield LoginFail(error: e);
    }
  }
}
