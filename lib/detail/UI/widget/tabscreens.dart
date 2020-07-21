import 'package:ai/detail/UI/question/questionScreen.dart';
import 'package:ai/detail/UI/detailscreen/detailtabscreen.dart';
import 'package:ai/models/post.dart';
import 'package:flutter/material.dart';

class TabScreens extends StatelessWidget {
  final Post post;

  const TabScreens({
    @required this.post,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width,
      child: TabBarView(
        children: [
          DetailTabScreen(
            post: post,
          ),
          QuestionScreen(),
        ],
      ),
    );
  }
}
