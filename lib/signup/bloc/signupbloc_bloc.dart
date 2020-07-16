import 'dart:async';

import 'package:ai/authentication/bloc/authentication_bloc.dart';
import 'package:ai/services/userServices.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'signupbloc_event.dart';
part 'signupbloc_state.dart';

class SignupblocBloc extends Bloc<SignupblocEvent, SignupblocState> {
  final UserServices userServices;
  final AuthenticationBloc authbloc;
  String _token;

  SignupblocBloc({@required this.authbloc, @required this.userServices})
      : assert(userServices != null),
        assert(authbloc != null),
        super(SignupblocInitial());

  @override
  Stream<SignupblocState> mapEventToState(
    SignupblocEvent event,
  ) async* {
    if (event is SingupblocInitialEvent) {
      yield SignupblocInitial();
    } else if (event is SignUpWithCredentials) {
      yield* _mapSignUpWithCedentialsToState(event.username, event.password);
    } else if (event is SignUpLinkCardEvent) {
      yield SingupLinkCardState();
    } else if (event is SignUpWithGoogle) {
      yield* _mapSignUpWithGoogleToState();
    } else if (event is SignUpWithGitHub) {
      yield* _mapSignUpWithGithubToState();
    } else if (event is SignUpWithLinkedIn) {
      yield* _mapSignUpWithLinkedInToState();
    } else if (event is SingupblocSkipEvent) {
      yield* _mapSignUpSkipToState();
    }
  }

  Stream<SignupblocState> _mapSignUpWithCedentialsToState(
      String userId, String password) async* {
    yield SignUpInProgress();
    try {
      String token = await userServices.signUpWithCredentials(userId, password);
      _token = token;
      yield SingupLinkCardState();
    } catch (e) {
      print(e);
      yield SignUpFailure(error: e);
    }
  }

  Stream<SignupblocState> _mapSignUpWithGoogleToState() async* {
    yield SignUpInProgress();
    try {
      String token = await userServices.signUpWith3RDPart();
      _token = token;
      yield SingupLinkCardState();
    } catch (e) {
      print(e);
      yield SignUpFailure(error: e);
    }
  }

  Stream<SignupblocState> _mapSignUpWithGithubToState() async* {
    yield SignUpInProgress();
    try {
      String token = await userServices.signUpWith3RDPart();
      _token = token;
      yield SingupLinkCardState();
    } catch (e) {
      print(e);
      yield SignUpFailure(error: e);
    }
  }

  Stream<SignupblocState> _mapSignUpWithLinkedInToState() async* {
    yield SignUpInProgress();
    try {
      String token = await userServices.signUpWith3RDPart();
      _token = token;
      yield SingupLinkCardState();
    } catch (e) {
      print(e);
      yield SignUpFailure(error: e);
    }
  }

  Stream<SignupblocState> _mapSignUpSkipToState() async* {
    authbloc.add(AuthenticationLoggedIn(token: _token));
    yield SignupblocInitial();
  }
}
