import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'About.dart';
import 'Download.dart';
import 'Features.dart';
import 'First.dart';
import 'Join.dart';
import 'Last.dart';

class NavBar extends StatelessWidget {
  // hedou ki tsa9sini 3lihom njawbk ana.
  static GlobalKey homeKey = First().dataKey;
  static GlobalKey featuresKey = Features().dataKey;
  static GlobalKey joinKey = Join().dataKey;
  static GlobalKey downloadKey = Download().dataKey;
  static GlobalKey aboutKey = About().dataKey;
  static GlobalKey lastKey = Last().dataKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton.icon(
              icon: Image.asset('assets/logo/white (2).png'),
              onPressed: () {},
              label: Text(
                'DEBBAH\nBANK.',
                style: TextStyle(
                    fontFamily: 'Gilroy Bold',
                    fontSize: 55.sp,
                    color: Colors.white),
              )),
          /*Container(
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
            )*/
          //SizedBox(width: 110.w),
          Container(
            width: 704.5.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.white))),
                  child: TextButton(
                    onPressed: () {
                      /*Scrollable.ensureVisible(homeKey.currentContext);*/
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontFamily: 'Gilroy Medium',
                          fontSize: 31.sp,
                          color: Colors.white),
                    ),
                  ),
                ),
                //SizedBox(width: 80),
                TextButton(
                    onPressed: () {},
                    child: Text('Features',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31.sp,
                            color: Colors.white))),
                //SizedBox(width: 80),
                TextButton(
                    onPressed: () {},
                    child: Text('About Us',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31.sp,
                            color: Colors.white))),
                //SizedBox(width: 80),
                TextButton(
                    onPressed: () {},
                    child: Text('Support',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31.sp,
                            color: Colors.white))),
              ],
            ),
          ),
          //SizedBox(width: 150.w),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontFamily: 'Gilroy Medium',
                          fontSize: 31.sp,
                          color: Colors.white),
                    )),
                SizedBox(width: 18.w),
                SizedBox(
                  height: 75,
                  //width: 200.w,
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
            ),
          )
        ],
      ),
    );
  }
}
