import 'package:flutter/material.dart';
import 'bottom_appBar_demo.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter native appbar demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomAppBarDemo(),
    );
  }
}