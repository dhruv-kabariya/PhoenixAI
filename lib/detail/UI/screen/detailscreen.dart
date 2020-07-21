import 'package:ai/AppBar/UI/webappbar.dart';
import 'package:ai/detail/UI/widget/tabs.dart';
import 'package:ai/detail/UI/widget/tabscreens.dart';
import 'package:ai/detail/UI/widget/titlebar.dart';
import 'package:ai/models/post.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Post post;

  DetailScreen({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: WebAppBar(
        size: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                TitleBar(
                  title: post.title,
                ),
                DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        Tabs(),
                        TabScreens(
                          post: post,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
