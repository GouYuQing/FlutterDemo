import 'package:flutter/material.dart';
import 'open_and_close_demo.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter open and close demo',
       debugShowCheckedModeBanner: false,//去掉屏幕上的debug
      theme: new ThemeData.dark(),
      home: ExpansionTileDemo(),
    );
  }
}