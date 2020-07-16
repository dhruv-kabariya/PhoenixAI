import 'package:ai/answer/UI/Screens/answerscreen.dart';
import 'package:ai/detail/UI/widget/conversationscreen.dart';
import 'package:ai/detail/UI/widget/detailtabscreen.dart';
import 'package:flutter/material.dart';

class TabScreens extends StatelessWidget {
  const TabScreens({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: TabBarView(
        children: [
          DetailTabScreen(),
          AnswerScreen(),
        ],
      ),
    );
  }
}
