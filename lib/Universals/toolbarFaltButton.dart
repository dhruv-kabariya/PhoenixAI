import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    @required this.onpressed,
    @required this.icon,
    @required this.title,
    Key key,
  }) : super(key: key);
  final Function onpressed;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpressed,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white70),
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
