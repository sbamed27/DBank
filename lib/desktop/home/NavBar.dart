import 'package:debbah_bank_website/about/About.dart';
import 'package:debbah_bank_website/download/Download.dart';
import 'package:debbah_bank_website/features/Features.dart';
import 'package:debbah_bank_website/home/First.dart';
import 'package:debbah_bank_website/join/Join.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Last.dart';

class NavBar extends StatelessWidget {

  static GlobalKey homeKey = First().dataKey;
  static GlobalKey featuresKey = Features().dataKey;
  static GlobalKey joinKey = Join().dataKey;
  static GlobalKey downloadKey = Download().dataKey;
  static GlobalKey aboutKey = About().dataKey;
  static GlobalKey lastKey = Last().dataKey;

  @override
  Widget build(BuildContext context) {
/*
    GlobalKey homeKey = First().dataKey;
    GlobalKey featuresKey = Features().dataKey;
    GlobalKey joinKey = Join().dataKey;
    GlobalKey downloadKey = Download().dataKey;
    GlobalKey aboutKey = About().dataKey;
    GlobalKey lastKey = Last().dataKey;
*/
    return ScreenUtilInit(
      designSize: Size(1920, 1080),
      builder: () => Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 100.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Container(
                    width: 165.w,
                    height: 165,
                    child: FittedBox(
                      child: Image.asset('assets/logo/white (2).png'),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'DEBBAH\nBANK.',
                        style: TextStyle(
                            fontFamily: 'Gilroy Bold',
                            fontSize: 55.sp,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(width: 110.w),
            Container(
              width: 704.5.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                      onPressed: () { /*Scrollable.ensureVisible(homeKey.currentContext);*/},
                      child: Text(
                        'Home',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31.sp,
                            color: Colors.white),
                      ),
                    shape: Border(bottom: BorderSide(
                      color: Colors.white,
                    )),
                  ),
                  //SizedBox(width: 80),
                  FlatButton(
                      onPressed: () {},
                      child: Text('Features',
                          style: TextStyle(
                              fontFamily: 'Gilroy Medium',
                              fontSize: 31.sp,
                              color: Colors.white))),
                  //SizedBox(width: 80),
                  FlatButton(
                      onPressed: () {},
                      child: Text('About Us',
                          style: TextStyle(
                              fontFamily: 'Gilroy Medium',
                              fontSize: 31.sp,
                              color: Colors.white))),
                  //SizedBox(width: 80),
                  FlatButton(
                      onPressed: () {},
                      child: Text('Support',
                          style: TextStyle(
                              fontFamily: 'Gilroy Medium',
                              fontSize: 31.sp,
                              color: Colors.white))),
                ],
              ),
            ),
            SizedBox(width: 170.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontFamily: 'Gilroy Medium',
                          fontSize: 31.sp,
                          color: Colors.white),
                    )),
                SizedBox(width: 20.w),
                SizedBox(
                  height: 75,
                  width: 200.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Get started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 31.sp,
                          fontFamily: 'Gilroy Light'),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF925D5D).withOpacity(0.56),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}