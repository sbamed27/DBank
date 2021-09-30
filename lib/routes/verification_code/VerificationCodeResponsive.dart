import 'package:debbah_bank_website/routes/verification_code/VerificationCodePhone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../MyResponsive.dart';
import 'VerificationCodeDesktop.dart';

class VerificationCodeResponsive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyResponsive(
      desktop: ScreenUtilInit(
        builder: () => VerificationCodeDesktop(),
        designSize: Size(1920, 1080),
      ),
      phone: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => VerificationCodePhone(),
      ),
    );
  }
}
