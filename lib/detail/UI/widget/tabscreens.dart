import 'package:ai/detail/UI/conversationscreen/conversationscreen.dart';
import 'package:ai/detail/UI/detailscreen/detailtabscreen.dart';
import 'package:flutter/material.dart';

class TabScreens extends StatelessWidget {
  const TabScreens({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width,
      child: TabBarView(
        children: [
          DetailTabScreen(),
          ConversationScreen(),
        ],
      ),
    );
  }
}
