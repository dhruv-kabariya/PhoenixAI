import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/login/ui/loginscreen.dart';
import 'package:ai/signup/ui/confirmSignUp.dart';
import 'package:ai/signup/ui/signupscreen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/loginform': (context) => LoginForm(),
        '/signup': (context) => SignUpForm(),
        '/confirm': (context) => ConfirmSignUp(),
      },
    );
  }
}
