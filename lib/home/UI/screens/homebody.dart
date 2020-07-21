import 'package:ai/posts/UI/screen/postlist.dart';
import 'package:ai/userhome/UI/screens/useroptions.dart';
import 'package:ai/topdetail/UI/topScreen.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: UserOptions(),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: PostList(),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(child: TopPanel()),
          ),
        ],
      ),
    );
  }
}
