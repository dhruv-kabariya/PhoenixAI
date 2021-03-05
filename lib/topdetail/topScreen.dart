import 'package:flutter/material.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
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
                  style: TextStyle(color: Colors.black, fontSize: 20),
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
                        style: TextStyle(color: Colors.black),
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
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
