import '../join/Join.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../features/Features.dart';
import 'package:flutter/material.dart';
import 'First.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*ScreenUtil(

    );*/
    return Scaffold(
        body: ListView(
      children: [
        First(),
        SizedBox(height: 71),
        Features(),
        SizedBox(height: 78),
        Join(),
      ],
    ));
  }
}
