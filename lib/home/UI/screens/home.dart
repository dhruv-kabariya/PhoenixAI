import 'package:ai/home/UI/screens/homebody.dart';
import 'package:ai/AppBar/UI/webappbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: WebAppBar(
        size: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: HomeBody(),
    );
  }
}
