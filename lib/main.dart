//import 'package:debbah_bank_website/icons_dart_files/d_bank_icons.dart';
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
