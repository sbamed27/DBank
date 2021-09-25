import 'package:debbah_bank_website/MyResponsive.dart';
import 'package:debbah_bank_website/routes/login/number/LoginWithNumberPhone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'LoginWithNumberDesktop.dart';

class LoginWithNumberResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyResponsive(
        desktop: ScreenUtilInit(
          builder: () => LoginWithNumberDesktop(),
          designSize: Size(1920, 1080),
        ),
        phone: ScreenUtilInit(
          builder: () => LoginWithNumberPhone(),
          designSize: Size(360, 690),
        ));
  }
}
