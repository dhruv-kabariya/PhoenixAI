import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    @required this.boxwidth,
    @required this.controller,
  }) : super(key: key);

  final double boxwidth;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: boxwidth),
      height: 35,
      width: boxwidth * 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).secondaryHeaderColor),
      child: TextField(
        textAlign: TextAlign.left,
        controller: controller,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
        onChanged: (value) {
          // print(controller.text);
        },
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: "Search Profile , Papers"),
      ),
    );
  }
}
