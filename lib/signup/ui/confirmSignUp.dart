import 'package:ai/signup/bloc/signupbloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Container linkForm(BuildContext context, SignupblocBloc bloc, state) {
  return Container(
    child: Form(
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 2, left: 3, right: 3, bottom: 5),
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
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 2, left: 3, right: 3, bottom: 5),
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
            margin: EdgeInsets.symmetric(vertical: 5),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                bloc.add(SignUpLinkCardUpdateEvent());
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "All Set",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 5),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                bloc.add(SingupblocSkipEvent());
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Skip",
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
    ),
  );
}
