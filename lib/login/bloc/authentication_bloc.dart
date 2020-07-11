import 'dart:async';

import 'package:ai/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppLoaded) {
      yield* _mapAppLoadedToState(event);
    }

    if (event is UserLoggedIn) {
      yield* _mapUserLoggedInToState(event);
    }

    if (event is UserLoggedOut) {
      yield* _mapUserLoggedOutToState(event);
    }
  }

  Stream<AuthenticationState> _mapAppLoadedToState(AppLoaded event) async* {
    yield AuthenticationLoading(); // to display splash screen
    try {
      //TODO: data is coming from hive.
      var currentUser;

      if (currentUser != null) {
        //user is authenticated
        yield AuthenticationAuthenticated(user: currentUser);
      } else {
        //user is not authenticated
        yield AuthenticationNotAuthenticated();
      }
    } catch (e) {
      //some error occur
      yield AuthenticationFailure(
          message: e.message ?? 'An unknown error occurred');
    }
  }

  Stream<AuthenticationState> _mapUserLoggedInToState(
      UserLoggedIn event) async* {
    //user already authenticated
    yield AuthenticationAuthenticated(user: event.user);
  }

  Stream<AuthenticationState> _mapUserLoggedOutToState(
      UserLoggedOut event) async* {
    //TODO: delete data from hive.
    // await _authenticationService.signOut();
    yield AuthenticationNotAuthenticated();
  }
}
