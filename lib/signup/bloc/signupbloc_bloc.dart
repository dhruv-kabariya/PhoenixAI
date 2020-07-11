import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signupbloc_event.dart';
part 'signupbloc_state.dart';

class SignupblocBloc extends Bloc<SignupblocEvent, SignupblocState> {
  SignupblocBloc() : super(SignupblocInitial());

  @override
  Stream<SignupblocState> mapEventToState(
    SignupblocEvent event,
  ) async* {
    if (event is SingupblocInitialEvent) {
      yield SignupblocInitial();
    }
    if (event is SingupblocNextEvent) {
      yield SingupblocSecondPage();
    }
  }
}
