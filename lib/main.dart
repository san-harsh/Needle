// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './theme/custom_theme.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title:
          const Text('Needle'),
        ),
        body: const Center(
          child: Text('Hello harsh '),
        ),

    
   bottomNavigationBar: ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),


      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('My Orders')),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings), title: Text('Settings')),
          
        ],
        
      ),
    )
    




      ),
      
      theme: CustomTheme.lightTheme,
    );
  }
}
