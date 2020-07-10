part of 'homepage_bloc.dart';

@immutable
abstract class HomepageEvent {}

class HomePageLoading extends HomepageEvent {}

class HomePageLoaded extends HomepageEvent {}
