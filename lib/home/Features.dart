import 'package:debbah_bank_website/icons_dart_files/d_bank_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Features extends StatelessWidget {
  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      key: dataKey,
      children: [
        Text(
          'Awesome features',
          style: TextStyle(
              color: Colors.black, fontSize: 84.sp, fontFamily: 'Gilroy Bold'),
        ),
        SizedBox(
          height: 49,
        ),
        Text(
          'access from all devices PC, PHONE and TABLET',
          style: TextStyle(fontSize: 29.sp, fontFamily: 'Gilroy Light'),
        ),
        SizedBox(
          height: 71,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 134,
                        height: 134,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(68)
                          //more than 50% of width makes circle
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/logo/responsive.svg',
                            width: 64,
                            height: 71,
                          ),
                        ),
                      ),
                      Text(
                        'Everywhere access',
                        style: TextStyle(
                            fontSize: 36.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 92,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 134,
                        height: 134,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(68)
                          //more than 50% of width makes circle
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/logo/support.svg',
                            width: 64,
                            height: 71,
                          ),
                        ),
                      ),
                      Text(
                        '24 Hours support',
                        style: TextStyle(
                            fontSize: 36.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Image.asset('assets/background/1576.png'),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 134,
                        height: 134,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(68)
                          //more than 50% of width makes circle
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/logo/two tone.svg',
                            width: 64,
                            height: 71,
                          ),
                        ),
                      ),
                      Text(
                        'Free download',
                        style: TextStyle(
                            fontSize: 36.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 92,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 134,
                        height: 134,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(68)
                          //more than 50% of width makes circle
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/logo/verified.svg',
                            width: 64,
                            height: 71,
                          ),
                        ),
                      ),
                      Text(
                        'High security',
                        style: TextStyle(
                            fontSize: 36.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
