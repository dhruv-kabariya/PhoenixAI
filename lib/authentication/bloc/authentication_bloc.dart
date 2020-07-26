import 'dart:async';

import 'package:ai/models/user.dart';
import 'package:ai/profile/constants.dart';
import 'package:ai/services/userServices.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({@required this.userServices})
      : super(AuthenticationInitial());

  final UserServices userServices;
  final darkTheme = Hive.box(UserTable);

  AuthenticationState get initialState => AuthenticationInitial();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AuthenticationStarted) {
      yield* _mapAuthenticationStartedToState();
    } else if (event is AuthenticationLoggedIn) {
      yield* _mapAuthenticationLoggedInToState();
    } else if (event is AuthenticationLoggedOut) {
      yield* _mapAuthenticationLoggedOut();
    } else if (event is AuthenticationLoginCard) {
      yield AuthenticationLogin();
    } else if (event is AuthenticationSignUpCard) {
      yield AuthenticationSignUp();
    }
  }

  Stream<AuthenticationState> _mapAuthenticationStartedToState() async* {
    final isSignedIn = await userServices.isSignedin();
    print(isSignedIn);
    if (isSignedIn) {
      User user = await userServices.getUser();
      yield AuthenicationSuccess(user.name);
    } else {
      yield AuthentictionFailure();
    }
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedInToState() async* {
    User user = await userServices.getUser();
    yield AuthenicationSuccess(user.name);
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedOut() async* {
    yield AuthentictionFailure();
  }
}
