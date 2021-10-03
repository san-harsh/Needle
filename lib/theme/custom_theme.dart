import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

//import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: HexColor('#F83E4B'),
        // color: HexColor('#F83E4B'),
        toolbarHeight: 70,
      ),
      fontFamily: 'Sacramento',
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily:
        ),
      ), //3
      buttonTheme: ButtonThemeData( // 4
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.purpleAccent,
      )
    );
  }
}