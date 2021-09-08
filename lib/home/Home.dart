import '../join/Join.dart';
import '../download/Download.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../about/About.dart';
import '../features/Features.dart';
import 'package:flutter/material.dart';
import 'First.dart';
import '../Last.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*ScreenUtil(

    );*/
    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView(
      children: [
        First(),
        SizedBox(height: 71),
        Features(),
        SizedBox(height: 78),
        Join(),
        SizedBox(height: 86),
        Download(),
        SizedBox(height: 98),
        About(),
        Last(),
      ],
    ));
  }
}
