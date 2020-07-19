import 'package:ai/AppBar/UI/iconrow.dart';
import 'package:ai/AppBar/UI/logo.dart';
import 'package:ai/AppBar/UI/searchbox.dart';

import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget implements PreferredSizeWidget {
  const WebAppBar({Key key, @required this.size}) : super(key: key);
  final Size size;

  @override
  _WebAppBarState createState() => _WebAppBarState();

  @override
  Size get preferredSize => size;
}

class _WebAppBarState extends State<WebAppBar> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // WebappbarBloc bloc = WebappbarBloc();

    double boxwidth = MediaQuery.of(context).size.width / 100;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
        // borderRadius: BorderRadius.vertical(
        //   bottom: Radius.circular(30),
        // ),
      ),
      child: Container(
        height: widget.size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(boxwidth: boxwidth),
            SearchBox(
              boxwidth: boxwidth,
              controller: _controller,
            ),
            IconRow()
          ],
        ),
      ),
    );
  }
}
