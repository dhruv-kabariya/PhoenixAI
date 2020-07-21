import 'package:ai/detail/UI/widget/contributorpart.dart';
import 'package:ai/detail/UI/widget/detailtab.dart';
import 'package:ai/models/post.dart';
import 'package:flutter/material.dart';

class DetailTabScreen extends StatelessWidget {
  final Post post;
  const DetailTabScreen({
    @required this.post,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          DetailTab(
            post: post,
          ),
          CotriButorPart(
            tags: post.tags,
            contrib_list: post.contributors_list,
          )
        ],
      ),
    );
  }
}
