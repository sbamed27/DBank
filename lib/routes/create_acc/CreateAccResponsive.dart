import 'package:debbah_bank_website/MyResponsive.dart';
import 'package:debbah_bank_website/routes/create_acc/CreateAccDesktop.dart';
import 'package:debbah_bank_website/routes/create_acc/CreateAccPhone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyResponsive(
      desktop: ScreenUtilInit(
        builder: () => CreateAccDesktop(),
        designSize: Size(1920, 1080),
      ),
      phone: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => CreateAccPhone(),
      ),
    );
  }
}
