import 'package:debbah_bank_website/phone/create_acc/CreateAcc.dart';
import 'package:flutter/material.dart';
import 'home/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Debbah Bank',
      debugShowCheckedModeBanner: false,
      routes: {
        'Get started': (context) => CreateAcc(),
        'Home': (context) => Home(),
      },
      home: Home(),
    );
  }
}
