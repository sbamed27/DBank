import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeDesktop extends StatefulWidget {
  @override
  State<VerificationCodeDesktop> createState() =>
      _VerificationCodeDesktopState();
}

class _VerificationCodeDesktopState extends State<VerificationCodeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background/untitled-1.png'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Container(
            width: 474.w,
            height: 694,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo/gradient red-black (2).png',
                      width: 197.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'DEBBAH\nBANK.',
                        style: TextStyle(
                          fontFamily: 'Gilroy Bold',
                          fontSize: 41.sp,
                          color: Color(0xFF6A0707),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  'Verification Code',
                  style: TextStyle(
                    fontSize: 34.8.sp,
                    fontFamily: 'Gilroy Bold',
                    color: Color(0xFF590D0D),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Please type the verificatuin code sent to\n+213 610 10 10 19',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'Gilroy Bold',
                    color: Color(0xFF590D0D),
                  ),
                ),
                SizedBox(
                  height: 51,
                ),
                Container(
                  width: 413.w,
                  child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      onChanged: (value) {
                        setState(() {});
                      }),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 369.w,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Add email');
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Color(0xFF720707),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: 369.w,
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 12.5.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF686868)),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'By clicking Next, you are in agreement of ',
                        ),
                        TextSpan(
                            text: 'terms and conditions',
                            style: TextStyle(
                                fontFamily: 'Gilroy Bold',
                                color: Color(0xFF686868)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Terms of Service');
                              }),
                        TextSpan(
                          text: ' and you\'ve read our',
                        ),
                        TextSpan(
                            text: ' privacy policy',
                            style: TextStyle(
                                fontFamily: 'Gilroy Bold',
                                color: Color(0xFF686868)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Terms of Service');
                              }),
                      ])),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(
                            fontSize: 14.sp, color: Color(0xFF590D0D)),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  fontSize: 14.sp, color: Color(0xFF590D0D)),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cookies',
                              style: TextStyle(
                                  fontSize: 14.sp, color: Color(0xFF590D0D)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
