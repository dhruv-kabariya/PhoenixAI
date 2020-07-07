import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  const IconRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 40,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("profile.jpg"), fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  child: Text(
                    "Rashmika",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color(0xB3121212), shape: BoxShape.circle),
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.white70,
                size: 20,
              ),
            ),
          ),
          Container(
            width: 30,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(top: 8, bottom: 8, right: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xB3121212),
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.white70,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
