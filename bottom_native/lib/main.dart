import 'package:flutter/material.dart';
import 'bottom_navigaton.dart';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottom Navigation',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}