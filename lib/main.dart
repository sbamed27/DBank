import 'package:flutter/material.dart';
import 'home/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Debbah Bank',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
