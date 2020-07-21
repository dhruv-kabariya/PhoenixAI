part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeChanged extends ThemeEvent {
  final bool isDark;

  ThemeChanged({this.isDark});
  @override
  List<Object> get props => [isDark];
}

class ThemeInitialEvent extends ThemeEvent {
  @override
  List<Object> get props => [];
}
