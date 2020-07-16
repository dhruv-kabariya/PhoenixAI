import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
    @required this.kRadius,
    @required this.image,
    @required this.func,
  }) : super(key: key);

  final double kRadius;
  final AssetImage image;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: kRadius,
      child: Material(
        shadowColor: Color(0xff2E2E2E),
        elevation: 4.0,
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: kRadius * 2,
          height: kRadius * 2,
          child: InkWell(
            onLongPress: func,
          ),
        ),
      ),
    );
  }
}
