import 'package:debbah_bank_website/MyResponsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'AddEmailDesktop.dart';
import 'AddEmailPhone.dart';

class AddEmailResponsive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyResponsive(
      desktop: ScreenUtilInit(
        builder: () => AddEmailDesktop(),
        designSize: Size(1920, 1080),
      ),
      phone: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => AddEmailPhone(),
      ),
    );
  }
}
