import 'package:debbah_bank_website/routes/addEmail/AddEmailResponsive.dart';
import 'package:debbah_bank_website/routes/create_acc/CreateAccResponsive.dart';
import 'package:debbah_bank_website/routes/login/email/LoginScreenEmailResponsive.dart';
import 'package:debbah_bank_website/routes/login/number/LoginWithNumberResponsive.dart';
import 'package:debbah_bank_website/routes/verification_code/VerificationCodeResponsive.dart';
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
        'Add email': (context) => AddEmailResponsive(),
        'Verification code': (context) => VerificationCodeResponsive(),
        'Login with number': (context) => LoginWithNumberResponsive(),
        'Login': (context) => LoginScreenEmailResponsive(),
        'Get started': (context) => CreateAccResponsive(),
        'Home': (context) => Home(),
      },
      home: Home(),
    );
  }
}
