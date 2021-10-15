import 'package:debbah_bank_website/MyResponsive.dart';
import 'package:debbah_bank_website/routes/dashboard/DashboardDesktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyResponsive(
        desktop: ScreenUtilInit(
            designSize: Size(1920, 1080), builder: () => DashboardDesktop()),
        phone: ScreenUtilInit(
            designSize: Size(360, 690), builder: () => DashboardDesktop()));
  }
}
