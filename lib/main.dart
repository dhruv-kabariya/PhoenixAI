import 'package:ai/blocObserver.dart';
import 'package:ai/constants/appConstant.dart';
import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/locator.dart';
import 'package:ai/login/ui/loginscreen.dart';
import 'package:ai/router.dart';

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
          create: (context) => SignupblocBloc()..add(SingupblocInitialEvent()),
        ),
      ],
      child: MaterialApp(
        initialRoute: "/",
        onGenerateRoute: Router.generateRoute,
        routes: {
          // '/': (context) => HomeScreen(),
          '/': (context) => LoginScreen(),
          RoutePaths.Login: (context) => LoginForm(),
          RoutePaths.Register: (context) => SignUpForm(),
          RoutePaths.ConfirmSignup: (context) => ConfirmSignUp(),
        },
      ),
    );
  }
}
