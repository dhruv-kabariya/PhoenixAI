import 'package:ai/home/UI/widgets/postlist.dart';
import 'package:ai/home/UI/widgets/useroptions.dart';
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
      child: Container(
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
      ),
    );
  }
}

class TopPanel extends StatelessWidget {
  const TopPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Users",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.only(top: 5, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("profile.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "User Dummy",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Column(
              children: [
                Text(
                  "Top Papers",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
