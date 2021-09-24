import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Last extends StatelessWidget {
  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: dataKey,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'All Rights Reserved, Debbah bank © 2021',
                style: TextStyle(
                    fontSize: 31.sp,
                    fontFamily: 'Gilroy Medium',
                    color: Colors.white),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(right: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text('Privacy Policy',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31.sp,
                            color: Colors.white)),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 49.w,
                  ),
                  TextButton(
                    child: Text(
                      'Cookies',
                      style: TextStyle(
                          fontFamily: 'Gilroy Medium',
                          fontSize: 31.sp,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                  /*


                    Khassni one last widget hna: options select.


                     */
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
