import 'package:debbah_bank_website/home/Home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodePhone extends StatefulWidget {
  @override
  State<VerificationCodePhone> createState() => _VerificationCodePhoneState();
}

class _VerificationCodePhoneState extends State<VerificationCodePhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => Column(
          children: [
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: SvgPicture.asset(
                          'assets/phone/logo/menu_red_24dp.svg'),
                    )),
                Flexible(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      alignment: Alignment.center,
                      child: TextButton.icon(
                        onPressed: () {Navigator.pushNamed(context, 'Home');},
                        icon: Image.asset(
                            'assets/phone/logo/gradient red-black (2).png'),
                        label: Text(
                          'DEBBAH\nBANK.',
                          style: TextStyle(
                              color: Color(0xFF720707),
                              fontSize: 21.sp,
                              fontFamily: 'Gilroy Bold'),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset('assets/phone/logo/textsms_black_24dp.svg'),
            SizedBox(
              height: 13.4,
            ),
            Text(
              'Verification Code',
              style: TextStyle(
                fontSize: 25.sp,
                fontFamily: 'Gilroy Bold',
                color: Color(0xFF720707),
              ),
            ),
            SizedBox(
              height: 58,
            ),
            Text(
              'Please type the verification code sent to\n+213 610 10 10 19',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: 'Gilroy Bold',
                color: Color(0xFF720707),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  onChanged: (value) {
                    setState(() {});
                  }),
            ),
            SizedBox(
              height: 33,
            ), // Separated fields.
            Container(
              width: 286.w,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Next'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF720707)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35.w),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: 9.5.sp,
                          fontFamily: 'Gilroy Medium',
                          color: Color(0xFF686868)),
                      children: <TextSpan>[
                    TextSpan(
                      text: 'By clicking Next, you are in agreement of ',
                    ),
                    TextSpan(
                        text: 'terms and conditions',
                        style: TextStyle(
                            fontSize: 9.5.sp,
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
                            fontSize: 9.5.sp,
                            fontFamily: 'Gilroy Bold',
                            color: Color(0xFF686868)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Terms of Service');
                          }),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
