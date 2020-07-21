part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();
}

class ThemeInitial extends ThemeState {
  //TODO: get the data from hive to assign to isDark variable
  final bool isDark;

  ThemeInitial({this.isDark});
  @override
  List<Object> get props => [isDark];
}

class ThemeChangeState extends ThemeState {
  final bool isDark;

  ThemeChangeState({this.isDark});
  @override
  List<Object> get props => [];
}
