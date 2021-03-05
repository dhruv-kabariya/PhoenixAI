import 'package:ai/authentication/ui/widgets/authstate.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  AuthenticationScreen({
    Key key,
  }) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    double boxheight = MediaQuery.of(context).size.height / 100;
    double boxwidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 50),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            // gradient:
            // RadialGradient(colors: [Color(0xfffc3147), Color(0x80fc3147)])),
            ),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Container(
            height: boxheight * 80,
            width: boxwidth * 40,
            margin: EdgeInsets.only(
                left: boxwidth * 3, right: boxwidth * 3, top: boxheight * 5),
            alignment: Alignment.center,
            child: CardOptions(
              height: boxheight * 80,
              width: boxwidth * 40,
            ),
          ),
        ),
      ),
    );
  }
}
