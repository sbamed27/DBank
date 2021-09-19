import 'package:flutter/material.dart';

class MyResponsive extends StatefulWidget {
  final Widget desktop, phone;

  const MyResponsive({required this.desktop, required this.phone});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 650;

  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width <= 650;

  @override
  _MyResponsiveState createState() => _MyResponsiveState();
}

class _MyResponsiveState extends State<MyResponsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 650)
        return widget.desktop;
      else
        return widget.phone;
    });
  }
}
