import '../features/Features.dart';
import 'package:flutter/material.dart';
import 'First.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
        First(),
        SizedBox(height: 71),
        Features(),
      ],
    ));
  }
}
