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
      margin: EdgeInsets.only(
        right: boxwidth * 2,
      ),
      padding: EdgeInsets.all(10),
      height: 60,
      width: boxwidth * 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0x80121212)),
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 18,
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
