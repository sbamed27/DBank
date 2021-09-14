import 'package:debbah_bank_website/icons_dart_files/d_bank_apple_icons.dart';
import 'package:debbah_bank_website/icons_dart_files/d_bank_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Download extends StatelessWidget {

  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      key: dataKey,
      designSize: Size(1920,1080),
      builder: () => Row(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width / 2).w,
            padding: EdgeInsets.only(right: 70.w),
            child: Stack(alignment: Alignment.centerRight, children: [
              Container(
                margin: EdgeInsets.only(left: 60.w),
                width: 960.w,
                height: 701,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/background/1508.png'),
                )),
              ),
              Container(
                margin: EdgeInsets.only(right: 60.w),
                width: 343.w,
                height: 644,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/background/15762.png'),
                )),
              ),
            ]),
          ),
          Container(
            width: 710.w,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Download the app for your android and iphone',
                  style: TextStyle(
                    fontFamily: 'Gilroy Bold',
                    fontSize: 70.sp,
                  ),
                ),
                Text(
                  'you can access from all devices (PC, PHONE and TABLET)',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Gilroy Light',
                  ),
                ),
                Text(
                  'download the app from down',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Gilroy Light',
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width / 2).w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(DBank.android, color: Colors.white, size: 50.sp,),
                        label: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GET IT ON',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Light',
                                fontSize: 22.sp,
                              ),
                            ),
                            Text(
                              'Google Play',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Medium',
                                fontSize: 36.sp,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            /*padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 15)),*/
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF590D0D))),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(DBankApple.apple, color: Colors.white, size: 50.sp,),
                        label: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Available on the',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Light',
                                fontSize: 22.sp,
                              ),
                            ),
                            Text(
                              'App Store',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Medium',
                                fontSize: 36.sp,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            /*padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 15)),*/
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF590D0D))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
