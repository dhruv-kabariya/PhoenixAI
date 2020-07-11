import 'package:ai/signup/bloc/signupbloc_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => SignupblocBloc());
}
