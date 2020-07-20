import 'package:ai/authentication/ui/widgets/authstate.dart';
import 'package:ai/authentication/ui/widgets/cardphoto.dart';
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

    return Container(
      child: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [Colors.indigoAccent[200], Colors.indigoAccent[100]])),
        child: Center(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            child: Container(
              height: boxheight * 80,
              width: boxwidth * 70,
              alignment: Alignment.center,
              child: Row(
                children: [
                  CardPhoto(),
                  CardOptions(
                    height: boxheight * 80,
                    width: boxwidth * 70,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
