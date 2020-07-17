import 'package:ai/Universals/customchips.dart';
import 'package:ai/detail/UI/screen/detailscreen.dart';
import 'package:ai/icons/my_icon_icons.dart';
import 'package:ai/profile/profile_page.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key key,
    @required this.boxHeight,
  }) : super(key: key);

  final double boxHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(),
          ),
        );
      },
      child: Card(
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
          // height: boxHeight * 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()),
                          );
                        },
                        child: ProfileData()),
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
              Title(),
              About(),
              Tags(),
              Images(boxHeight: boxHeight),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 5, left: 10),
      // height: boxHeight * 5,
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
    );
  }
}

class Images extends StatelessWidget {
  const Images({
    Key key,
    @required this.boxHeight,
  }) : super(key: key);

  final double boxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
        // height: boxHeight * 6,
        child: Wrap(
          children: [
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
            CustomChip(
              text: "Artificial Nural Net",
              backColor: Colors.deepPurple[100],
              textColors: Colors.deepPurple[800],
            ),
          ],
        ));
  }
}

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: boxHeight * 5,
      margin: EdgeInsets.only(top: 3, left: 10, right: 10),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 14, color: Colors.white70),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: boxHeight * 5,
      margin: EdgeInsets.only(top: 6, left: 10, right: 10),
      child: Text(
        "GAN with Parametar Setting",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class ProfileData extends StatelessWidget {
  const ProfileData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("profile.jpg"), fit: BoxFit.cover),
            ),
          ),
          Text(
            "Rashmika Mandana",
            style: TextStyle(fontSize: 14, color: Colors.white),
          )
        ],
      ),
    );
  }
}
