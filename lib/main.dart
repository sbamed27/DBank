import 'package:debbah_bank_website/routes/create_acc/CreateAccPhone.dart';
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
