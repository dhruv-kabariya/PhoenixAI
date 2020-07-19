import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key key,
    @required this.kStyleHead,
    @required this.size,
    @required this.kStyleBody,
    @required this.titleText,
    @required this.codeCounter,
    @required this.chatCounter,
    @required this.postColor,
  }) : super(key: key);

  final TextStyle kStyleHead;
  final Size size;
  final TextStyle kStyleBody;
  final String titleText;
  final String codeCounter;
  final String chatCounter;
  final Color postColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 270,
      child: Card(
        shadowColor: Color(0xff121212),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 7,
        color: postColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                titleText,
                style: kStyleHead.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    FeatherIcons.code,
                  ),
                  Text(
                    codeCounter,
                    style: kStyleBody.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    FeatherIcons.messageCircle,
                  ),
                  Text(
                    chatCounter,
                    style: kStyleBody.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(
                    FeatherIcons.bookmark,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
