import 'package:ai/blocObserver.dart';
import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/locator.dart';
import 'package:ai/login/ui/loginscreen.dart';

import 'package:ai/signup/bloc/signupbloc_bloc.dart';
import 'package:ai/signup/ui/confirmSignUp.dart';
import 'package:ai/signup/ui/signupscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();

  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupblocBloc(),
        ),
      ],
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          // '/': (context) => HomeScreen(),
          '/': (context) => LoginScreen(),
          '/loginform': (context) => LoginForm(),
          '/signup': (context) => SignUpForm(),
          '/confirm': (context) => ConfirmSignUp(),
        },
      ),
    );
  }
}
