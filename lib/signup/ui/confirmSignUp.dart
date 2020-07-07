import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 8, left: 3, right: 3, bottom: 5),
            padding: EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 5),
            child: TextFormField(
              // controller: _confirmPassword,
              // obscureText: _showPas,
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.github),
                fillColor: Colors.grey,
                border: InputBorder.none,
                hintText: "GitHub",
              ),
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 8, left: 3, right: 3, bottom: 5),
            padding: EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 5),
            child: TextFormField(
              // controller: _confirmPassword,
              // obscureText: _showPas,
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.linkedin),
                fillColor: Colors.grey,
                border: InputBorder.none,
                hintText: "LinkedIn",
              ),
            ),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 8, bottom: 8),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              color: Colors.indigo,
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
