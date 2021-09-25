import 'package:debbah_bank_website/MyResponsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'LoginScreenEmailDesktop.dart';
import 'LoginScreenEmailPhone.dart';

class LoginScreenEmailResponsive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyResponsive(
      desktop: ScreenUtilInit(
        builder: () => LoginScreenEmailDesktop(),
        designSize: Size(1920, 1080),
      ),
      phone: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => LoginScreenEmailPhone(),
      ),
    );
  }
}
