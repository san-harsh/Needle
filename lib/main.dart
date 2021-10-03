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
      ),
      theme: CustomTheme.lightTheme,
    );
  }
}
