import 'package:debbah_bank_website/home/Home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../email/LoginScreenEmailPhone.dart';

class LoginWithNumberPhone extends StatefulWidget {
  static String redMenuSvg = 'assets/phone/logo/menu_red_24dp.svg';
  static bool isChecked = false;
  static bool pwVisible = false;

  @override
  State<LoginWithNumberPhone> createState() => _LoginWithNumberPhoneState();
}

class _LoginWithNumberPhoneState extends State<LoginWithNumberPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: SvgPicture.asset(LoginWithNumberPhone.redMenuSvg),
                    )),
                SizedBox(
                  width: 0.1.sw,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        //padding: EdgeInsets.only(left: 20),
                        child: Image.asset(
                            'assets/phone/logo/gradient red-black (2).png'),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'DEBBAH\nBANK.',
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'Gilroy Bold',
                                color: Color(0xFF6A0707)),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34, right: 42),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 27.sp,
                      fontFamily: 'Gilroy Bold',
                      color: Color(0xFF590D0D),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Builder(
                    builder: (context) => Form(
                            child: Column(
                          children: [
                            IntlPhoneField(
                              autoValidate: false,
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0)),
                                ),
                              ),
                              initialCountryCode: 'DZ',
                              validator: (value) {
                                if (value!.trim().isEmpty) {
                                  return 'Enter a valid Phone number';
                                }
                                return null;
                              },
                              /*onSaved: (value) {
                      numPhoneController.text = value!.number!;
                      codeCountryController.text = value.countryCode!;
                    },*/
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 17.w),
                              height: 60.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(41),
                                  border: Border.all(color: Color(0xFF720707))),
                              child: TextFormField(
                                obscureText: !LoginScreenEmailPhone.isChecked,
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      child: LoginScreenEmailPhone.pwVisible
                                          ? Icon(Icons.visibility_off)
                                          : Icon(Icons.visibility),
                                      onTap: () {
                                        setState(() {
                                          if (LoginScreenEmailPhone.isChecked ==
                                              false) {
                                            LoginScreenEmailPhone.pwVisible =
                                                true;
                                            LoginScreenEmailPhone.isChecked =
                                                true;
                                          } else {
                                            LoginScreenEmailPhone.isChecked =
                                                false;
                                            LoginScreenEmailPhone.pwVisible =
                                                false;
                                          }
                                        });
                                      },
                                    ),
                                    border: InputBorder.none,
                                    labelText: 'Password'),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value.length < 6) {
                                    return 'Please enter valid password';
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot password ?',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Gilroy Medium',
                                    color: Color(0xFF4E4E4E)),
                              ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Container(
                              width: 286.w,
                              height: 40.h,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy Medium'),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  )),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF720707)),
                                ),
                              ),
                            ),
                          ],
                        ))),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VerticalDivider(),
                    Text(
                      'OR',
                      style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontSize: 13.sp,
                        fontFamily: 'Gilroy Medium',
                      ),
                    ),
                    VerticalDivider(),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                TextButton(
                  child: Text(
                    'Login with email',
                    style: TextStyle(
                        fontFamily: 'Tw Cen MT',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF720707),
                        fontSize: 23.sp),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Login');
                  },
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Color(0xFF4E4E4E),
                          fontSize: 16.sp,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                        text: 'Not a member yet ?',
                      ),
                      TextSpan(
                        text: 'Get started',
                        style: TextStyle(
                          color: Color(0xFF720707),
                          fontSize: 16.sp,
                          fontFamily: 'Gilroy Bold',
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, 'Get started');
                          },
                      ),
                    ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
