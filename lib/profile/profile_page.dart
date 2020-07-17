import 'package:ai/profile/avatar.dart';
import 'package:ai/profile/constants.dart';
import 'package:ai/profile/graph.dart';
import 'package:ai/profile/name_chip.dart';
import 'package:ai/profile/post.dart';
import 'package:ai/profile/social.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double kRadius = (size.width * 0.04) + (size.height * 0.03);

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xff282828),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Avatar(
              kRadius: kRadius,
              image: AssetImage("assets/avatar.png"),
              func: () {},
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Jone Doe",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: kFontHead,
                  fontSize: 30,
                ),
              ),
            ),
            Spacer(size: size),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 15,
                ),
                Text(
                  "San Francisco, CA",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: kFontBody,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Spacer(size: size),
            Wrap(
              spacing: 8.0,
              runSpacing: 1.0,
              children: [
                NamedChip(
                  text: Text(
                    "Machine Learning",
                  ),
                  color: Color(0xffB5EADD),
                  kFontBody: kFontBody,
                ),
                NamedChip(
                  text: Text(
                    "Artificial Intelligence",
                  ),
                  color: Color(0xffFFAF5F),
                  kFontBody: kFontBody,
                ),
                NamedChip(
                  text: Text(
                    "TensorFlow",
                  ),
                  color: Color(0xff8391E1),
                  kFontBody: kFontBody,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Social(
                        kStyleBody: kStyleBody,
                      ),
                      Spacer(size: size),
                      Graph(kStyleHead: kStyleHead),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Container(
                    height: size.height * 0.50,
                    width: size.width * 0.67,
                    child: Card(
                      shadowColor: Color(0xff121212),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 7,
                      color: Color(0xff373737),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Top Posts :",
                              style: kStyleHead,
                            ),
                            Wrap(
                              children: [
                                Post(
                                  titleText:
                                      "Artificial intelligence would be the ultimate version of Google.",
                                  codeCounter: "200",
                                  chatCounter: "190",
                                  postColor: color1,
                                  kStyleHead: kStyleHead,
                                  size: size,
                                  kStyleBody: kStyleBody,
                                ),
                                Post(
                                  titleText:
                                      "Artificial intelligence would be the ultimate version of Google.",
                                  codeCounter: "200",
                                  chatCounter: "190",
                                  postColor: color2,
                                  kStyleHead: kStyleHead,
                                  size: size,
                                  kStyleBody: kStyleBody,
                                ),
                                Post(
                                  titleText:
                                      "Artificial intelligence would be the ultimate version of Google.",
                                  codeCounter: "200",
                                  chatCounter: "190",
                                  postColor: color3,
                                  kStyleHead: kStyleHead,
                                  size: size,
                                  kStyleBody: kStyleBody,
                                ),
                                Post(
                                  titleText:
                                      "Artificial intelligence would be the ultimate version of Google.",
                                  codeCounter: "200",
                                  chatCounter: "190",
                                  postColor: color4,
                                  kStyleHead: kStyleHead,
                                  size: size,
                                  kStyleBody: kStyleBody,
                                ),
                                Post(
                                  titleText:
                                      "Artificial intelligence would be the ultimate version of Google.",
                                  codeCounter: "200",
                                  chatCounter: "190",
                                  postColor: color5,
                                  kStyleHead: kStyleHead,
                                  size: size,
                                  kStyleBody: kStyleBody,
                                ),
                                Post(
                                  titleText:
                                      "Artificial intelligence would be the ultimate version of Google.",
                                  codeCounter: "200",
                                  chatCounter: "190",
                                  postColor: color1,
                                  kStyleHead: kStyleHead,
                                  size: size,
                                  kStyleBody: kStyleBody,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Spacer extends StatelessWidget {
  const Spacer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.02,
    );
  }
}
