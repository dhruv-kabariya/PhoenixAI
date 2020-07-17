import 'package:ai/AppBar/UI/webappbar.dart';
import 'package:ai/detail/UI/widget/tabs.dart';
import 'package:ai/detail/UI/widget/tabscreens.dart';
import 'package:ai/detail/UI/widget/titlebar.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: WebAppBar(
        size: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleBar(),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Tabs(),
                TabScreens(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
