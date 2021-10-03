// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class CustomTheme {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
       shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(4),
      ),
    ),
        backgroundColor: HexColor('#F83E4B'),
        toolbarHeight: 60,
        centerTitle: true,

        elevation: 10,
        titleTextStyle:
              const TextStyle(fontFamily: 'Sacramento',
               fontSize: 42,
              
               ),
      ),     
      buttonTheme: ButtonThemeData( // 4
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.purpleAccent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData( backgroundColor: HexColor('#F83E4B'),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),  
        
       )
       
    );
  }
}