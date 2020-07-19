import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'userhome_event.dart';
part 'userhome_state.dart';

class UserhomeBloc extends Bloc<UserhomeEvent, UserhomeState> {
  UserhomeBloc() : super(UserhomeInitial());

  @override
  Stream<UserhomeState> mapEventToState(
    UserhomeEvent event,
  ) async* {
    if (event is UserhomeGetData) {
      yield* _mapUserhomeGetData();
    }
  }

  Stream<UserhomeState> _mapUserhomeGetData() async* {
    yield UserhomeLoading();
    yield UserhomeLoaded();
  }
}
