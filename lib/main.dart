import 'package:ai/detail/UI/screen/detailscreen.dart';
import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/login/ui/loginscreen.dart';
import 'package:ai/profile/profile_page.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        // '/': (context) => LoginScreen(),
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginForm(),
        '/signup': (context) => SignUpForm(),
        '/confirm': (context) => ConfirmSignUp(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
