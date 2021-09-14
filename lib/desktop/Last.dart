import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Last extends StatelessWidget {

  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      key: dataKey,
      designSize: Size(1920, 1080),
      builder: () => Container(
          padding: EdgeInsets.only(left: 100.w),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF590D0D),
                Color(0xFF450A0A),
                Color(0xFF400909),
                Color(0xFF3A0808),
                Color(0xFF340707),
                Color(0xFF270505),
                Color(0xFF120303),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/logo/jdidWhite (2).png'),
                        Text(
                          'DEBBAH\nBANK.',
                          style: TextStyle(
                              fontSize: 27.sp,
                              fontFamily: 'Gilroy Bold',
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 33.w,
                    ),
                    Text(
                      'All Rights Reserved, Debbah bank © 2021',
                      style: TextStyle(
                          fontSize: 31.sp,
                          fontFamily: 'Gilroy Medium',
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Privacy Policy',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31.sp,
                            color: Colors.white)),
                    SizedBox(
                      width: 49.w,
                    ),
                    Text('Cookies',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31.sp,
                            color: Colors.white)),
                    SizedBox(
                      width: 49.w,
                    ),
                    /*


                  Khassni one last widget hna: options select.


                   */
                  ],
                ),
              )
            ],
          )),
    );
  }
}
