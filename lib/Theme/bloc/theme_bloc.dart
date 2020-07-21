import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial());

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      _mapToThemeChange(event.isDark);
    } else if (event is ThemeInitialEvent) {
      yield ThemeInitial();
    }
  }

  _mapToThemeChange(bool isDark) async* {
    //TODO: change the value of hive box
    yield ThemeChangeState(isDark: isDark);
  }
}
