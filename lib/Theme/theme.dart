import 'package:flutter/material.dart';

class WebTheme {
  static final ThemeData bright = ThemeData(
    scaffoldBackgroundColor: Colors.white,

    // logo colors and main button colou
    primaryColor: Color(0xfffc3147),

    // contrast with  primary color
    accentColor: Color(0xfffc3147),

    //
    buttonColor: Color(0xfffc3147),

    // secoundry headr color like detailpage name title
    secondaryHeaderColor: Color(0xff4e4e50),

    // devider theme
    dividerTheme: DividerThemeData(
        thickness: 2, color: Colors.grey, indent: 5, endIndent: 5),

    // appBar color and text  theme and colors
    appBarTheme: AppBarTheme(
      color: Color(0xff1a1a1d),
      elevation: 5,
      textTheme: TextTheme(headline1: TextStyle(color: Colors.grey)),
    ),

    textTheme: TextTheme(
      // main body text style >>> detail of post ,explanation
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),

      //  secoudry text >>
      bodyText2: TextStyle(color: Colors.black87, fontSize: 12),

      // button text
      button: TextStyle(color: Colors.white, fontSize: 12),

      // caption for time and update detail >>> post time
      caption: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),

      // main heading >>> post title in detail page
      headline1: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),

      //
      headline2: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      //
      headline3: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      //
      headline4: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      //
      headline5: TextStyle(color: Colors.black, fontSize: 14),
      //

      headline6: TextStyle(color: Colors.black87, fontSize: 12),
      //
      subtitle1: TextStyle(color: Colors.black, fontSize: 12),
      //
      subtitle2: TextStyle(color: Colors.black87, fontSize: 12),
    ),
  );

  static final List<Color> chipsBackground = [
    Colors.cyan[100],
    Colors.lightBlue[100],
    Colors.indigo[100],
    Colors.purple[100],
    Colors.pink[100],
    Colors.red[100]
  ];

  static final List<Color> chipsText = [
    Colors.black,
    Colors.blue[900],
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Color(0xfffc3147),
    dividerColor: Color(0xff4e4e50),
  );
}
