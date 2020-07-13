import 'package:ai/home/UI/widgets/tagchips.dart';
import 'package:ai/icons/my_icon_icons.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key key,
    @required this.boxHeight,
  }) : super(key: key);

  final double boxHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
          // top:20,
          bottom: 20,
          left: 20,
          right: 20),
      elevation: 10,
      color: Color(0xff262833),
      child: Container(
        padding: EdgeInsets.all(10),
        height: boxHeight * 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: boxHeight * 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("profile.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          "Rashmika Mandana",
                          style: TextStyle(fontSize: 18, color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.bookmark_border,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: boxHeight * 5,
              margin: EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Text(
                "GAN with Parametar Setting",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              height: boxHeight * 6,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return TagChip(
                    title: "Nural Net",
                  );
                },
              ),
            ),
            Container(
              height: boxHeight * 18,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10, bottom: 10),
                    child: Image.asset(
                      "dum1.png",
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: boxHeight, left: 10),
              height: boxHeight * 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.code,
                          size: 22,
                          color: Color(0xFFB00020),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "500",
                          style: TextStyle(color: Colors.white60),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          MyIcon.chat2,
                          size: 22,
                          color: Color(0xff097fea),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "200",
                          style: TextStyle(color: Colors.white60),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
