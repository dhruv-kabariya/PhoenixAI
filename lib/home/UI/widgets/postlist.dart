import 'package:ai/home/UI/widgets/PostCard.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  const PostList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String text =
    //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ";

    double boxHeight = MediaQuery.of(context).size.height / 100;
    // double boxWidth = MediaQuery.of(context).size.width / 100;
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return PostCard(boxHeight: boxHeight);
      },
    );
  }
}
