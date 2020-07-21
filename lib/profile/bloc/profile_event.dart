part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
}

class ProfileLoadingEvent extends ProfileEvent {
  @override
  List<Object> get props => [];
}

class ProfileLoadedEvent extends ProfileEvent {
  @override
  List<Object> get props => [];
}
