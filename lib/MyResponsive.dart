import 'package:flutter/material.dart';

class MyResponsive extends StatelessWidget {
  final Widget desktop, phone;

  const MyResponsive({required this.desktop, required this.phone});

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width > 650;
  static bool isPhone(BuildContext context) => MediaQuery.of(context).size.width <= 650 ;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth>650)
        return desktop;
      else return phone;
    });
  }
}
