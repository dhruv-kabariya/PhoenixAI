import 'package:ai/detail/UI/screen/detailscreen.dart';
import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/login/ui/loginscreen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primaryColor: Color(0x121212FF),
          scaffoldBackgroundColor: Colors.black),
      home: HomeScreen(),
    );
  }
}
