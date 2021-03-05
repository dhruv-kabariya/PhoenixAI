import 'package:ai/Universals/chipsShow.dart';
import 'package:ai/detail/UI/screen/detailscreen.dart';
import 'package:ai/icons/my_icon_icons.dart';
import 'package:ai/models/otheruser.dart';
import 'package:ai/models/post.dart';
import 'package:ai/profile/profile_page.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    @required this.post,
    Key key,
    @required this.boxHeight,
  }) : super(key: key);

  final double boxHeight;
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      // elevation: 10,
      // color: Color(0xff262833),
      child: InkWell(
        hoverColor: Colors.grey[50],
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                post: post,
              ),
            ),
          );
        },
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
                        child: ProfileData(
                          user: post.creators_id,
                        )),
                    Container(
                      child: Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Title(
                title: post.title,
              ),
              About(
                about: post.about,
              ),
              Tags(
                tags: post.tags,
              ),
              Images(boxHeight: boxHeight),
              BottomBar(
                questions: post.no_of_question,
                terythis: post.no_of_try,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    @required this.questions,
    @required this.terythis,
    Key key,
  }) : super(key: key);

  final int terythis;
  final int questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      // height: boxHeight * 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
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
                      terythis.toString(),
                      style: TextStyle(color: Colors.black54),
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
                      questions.toString(),
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
            ],
          ),
          Icon(
            Icons.bookmark_border,
            size: 22,
            color: Colors.green,
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

// class Tags extends StatelessWidget {
//   const Tags({
//     @required this.tags,
//     Key key,
//   }) : super(key: key);

//   final List<String> tags;

//   List<Widget> _chips(List<String> tags) {
//     return tags.map((e) {
//       return CustomChip(
//         text: e,
//         backColor: Colors.deepPurple[100],
//         textColors: Colors.deepPurple[800],
//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
//         // height: boxHeight * 6,
//         child: Wrap(children: _chips(tags)));
//   }
// }

class About extends StatelessWidget {
  const About({
    @required this.about,
    Key key,
  }) : super(key: key);

  final String about;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: boxHeight * 5,
      margin: EdgeInsets.only(top: 3),
      child: Text(
        about,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    @required this.title,
    Key key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: boxHeight * 5,
      margin: EdgeInsets.only(top: 6),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}

class ProfileData extends StatelessWidget {
  const ProfileData({
    @required this.user,
    Key key,
  }) : super(key: key);

  final OtherUser user;

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
            user.first_name + " " + user.last_name,
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
