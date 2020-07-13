import 'package:ai/detail/UI/widget/tabs.dart';
import 'package:ai/detail/UI/widget/tabscreens.dart';
import 'package:ai/detail/UI/widget/titlebar.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    ));
  }
}
