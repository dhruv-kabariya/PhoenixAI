import 'dart:async';

import 'package:ai/locator.dart';
import 'package:ai/models/user.dart';
import 'package:ai/services/userServices.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial());
  UserServices userServices = locator<UserServices>();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if (event is ProfileLoadingEvent) {
      yield ProfileInitial();
      //TODO: after the data is comming

      yield ProfileLoadedState(user: await userServices.getInfomation());
    }
  }
}
