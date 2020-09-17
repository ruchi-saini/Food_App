import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      color: Colors.green,
      home: About(),
    );
  }
}