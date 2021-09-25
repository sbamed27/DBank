import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      if (constraints.maxWidth > 700)
        return ScreenUtilInit(
          designSize: Size(1920, 1080),
          builder: () => widget.desktop,
        );
      else
        return ScreenUtilInit(
          designSize: Size(360, 690),
          builder: () => widget.phone,
        );
    });
  }
}
