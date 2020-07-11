import 'package:ai/constants/appConstant.dart';
import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/login/ui/loginscreen.dart';
import 'package:ai/signup/ui/confirmSignUp.dart';
import 'package:ai/signup/ui/signupscreen.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RoutePaths.Splash:
      //   //TODO : what is name of splash screen?
      //   // return MaterialPageRoute(builder: (_) => MySpalshScreen());
      //   break;
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      // case RoutePaths.Profile:
      //   //  return MaterialPageRoute(builder: (_) => profile());
      //   break;
      case RoutePaths.Register:
        return MaterialPageRoute(builder: (_) => SignUpForm());
        break;
      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      case RoutePaths.ConfirmSignup:
        return MaterialPageRoute(builder: (_) => ConfirmSignUp());
        break;
      case RoutePaths.LoginForm:
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
        break;
    }
  }
}
