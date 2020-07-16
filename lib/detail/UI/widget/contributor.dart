import 'package:flutter/material.dart';

class Contributors extends StatelessWidget {
  const Contributors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contributors",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("profile.jpg"), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 40,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("profile.jpg"), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 40,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("profile.jpg"), fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
