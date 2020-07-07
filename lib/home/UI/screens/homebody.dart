import 'package:flutter/material.dart';
import 'package:ai/icons/my_icon_icons.dart';

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
              child: Container(
                child: Card(
                  elevation: 10,
                  color: Color(0xBF121212),
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserOptions extends StatelessWidget {
  const UserOptions({
    Key key,
  }) : super(key: key);

  static const List<String> titles = [
    "GAN",
    "GAN With parametes",
    "Tensorflow",
    "PyTorch",
  ];

  List<Widget> createdlist() {
    // Show more click option left
    List<Widget> list = [];
    list.addAll(titles
        .map(
          (element) => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Icon(
                  Icons.flag,
                  color: Colors.amber[800],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                element,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        )
        .toList());

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color(0x80121212),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Posts",
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.add,
                          color: Colors.white70,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Container(
                      height: (MediaQuery.of(context).size.height / 100) * 30,
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: createdlist(),
                      )),
                ],
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ";

    double boxHeight = MediaQuery.of(context).size.height / 100;
    double boxWidth = MediaQuery.of(context).size.width / 100;
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return PostCard(boxHeight: boxHeight);
      },
    );
  }
}

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

class TagChip extends StatelessWidget {
  final String title;
  const TagChip({
    @required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..scale(0.8),
      child: Chip(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.green[200],
        labelStyle: TextStyle(color: Colors.black),
        label: Text(title),
      ),
    );
  }
}
