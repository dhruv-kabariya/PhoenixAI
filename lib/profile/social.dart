import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ai/profile/constants.dart';

class Social extends StatelessWidget {
  const Social({
    Key key,
    @required this.kStyleBody,
  }) : super(key: key);

  final TextStyle kStyleBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height * 0.3,
      // width: size.width * 0.25,
      height: 170,
      width: 320,
      // color: Color(0xffFFAF5F),
      child: Card(
        shadowColor: Color(0xff121212),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 7,
        color: Color(0xff373737),
        // color: Color(0xffB5EADD),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Image.asset(
                  "github-logo.png",
                  height: 45,
                ),
                title: Text(
                  "@Jone_Deo",
                  style: kStyleBody.copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      FeatherIcons.checkCircle,
                      color: Color(0xff20A85B),
                      size: 20,
                    ),
                    Text(
                      " Linked",
                      style: kStyleBody,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "linkedin.png",
                  color: Color(0xff0A66C2),
                  height: 45,
                ),
                title: Text(
                  "@Jone_Deo",
                  style: kStyleBody.copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      FeatherIcons.checkCircle,
                      color: Color(0xff20A85B),
                      size: 20,
                    ),
                    Text(
                      " Linked",
                      style: kStyleBody,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
