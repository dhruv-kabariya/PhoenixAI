import 'package:flutter/material.dart';

class CardPhoto extends StatelessWidget {
  const CardPhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/ai.jpg"), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
