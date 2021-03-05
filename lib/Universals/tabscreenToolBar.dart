import 'package:ai/Universals/toolbarFaltButton.dart';
import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.question_answer,
                  size: 20,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "200",
                  style: TextStyle(
                      letterSpacing: 0.2,
                      color: Colors.grey[400],
                      fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Questions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "Tag",
                  onpressed: () {},
                ),
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "User",
                  onpressed: () {},
                ),
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "Sort",
                  onpressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
