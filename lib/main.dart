import 'package:ai/Theme/bloc/theme_bloc.dart';
import 'package:ai/authentication/bloc/authentication_bloc.dart';
import 'package:ai/authentication/ui/screen/Authscreen.dart';
import 'package:ai/blocObserver.dart';
import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/locator.dart';

import 'package:ai/services/userServices.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();

  setupLocator();

  UserServices userServices = locator<UserServices>();
  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(userServices: userServices)
        ..add(AuthenticationStarted()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()..add(ThemeInitialEvent()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is ThemeChangeState) {
            return MaterialApp(
              // initialRoute: '/',
              theme:
                  state.isDark ?? false ? ThemeData.dark() : ThemeData.light(),
              home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  if (state is AuthenticationInitial) {
                    return Container(
                      color: Color(0xFF121212),
                    );
                  } else if (state is AuthenicationSuccess) {
                    return HomeScreen();
                  } else if (state is AuthentictionFailure) {
                    return AuthenticationScreen();
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            );
          }
          if (state is ThemeInitial) {
            return MaterialApp(
              // initialRoute: '/',
              //TODO : get the data from hive
              theme: ThemeData.light(),
              home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  if (state is AuthenticationInitial) {
                    return Container(
                      color: Color(0xFF121212),
                    );
                  } else if (state is AuthenicationSuccess) {
                    return HomeScreen();
                  } else if (state is AuthentictionFailure) {
                    return AuthenticationScreen();
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
