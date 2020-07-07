import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    @required this.boxwidth,
  }) : super(key: key);

  final double boxwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: boxwidth * 2,
      ),
      height: 40,
      width: boxwidth * 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0x80121212)),
      child: Center(
        child: TextField(
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white70),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search Profile , Papers"),
        ),
      ),
    );
  }
}
