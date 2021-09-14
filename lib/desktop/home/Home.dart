import '../MyResponsive.dart';
import 'package:flutter/material.dart';
import '../join/Join.dart';
import '../download/Download.dart';
import '../about/About.dart';
import '../features/Features.dart';
import 'First.dart';
import '../Last.dart';

class Home extends StatelessWidget {
/*
  static List myList = <Widget>[
    First(),
    Features(),
    Join(),
    Download(),
    About(),
    Last()
  ];
*/
  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).size.width}');

    return Scaffold(
        backgroundColor: Colors.white,
        body: MyResponsive(
          desktop: SingleChildScrollView(
            child: Column(
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
            ),
          ), phone: Container(),
        ));
  }
}
