import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenEmailDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background/Untitled-1.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Container(
            width: 500.w,
            height: 694,
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Home');
                    },
                    icon: Image.asset(
                      'assets/logo/gradient red-black (2).png',
                      height: 139.h,
                      width: 197.w,
                      alignment: Alignment.centerRight,
                    ),
                    label: Text(
                      'DEBBAH\nBANK',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 41.sp,
                        color: Color(0xFF6A0707),
                        fontFamily: 'Gilroy Bold',
                      ),
                    ),
                  ),
                  Container(
                    width: 335.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xFF590D0D),
                              fontSize: 34.8.sp,
                              fontFamily: 'Gilroy Bold',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Builder(
                            builder: (context) => Form(
                                    child: Column(
                                  children: [
                                    Container(
                                      width: 335.w,
                                      height: 60,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(41),
                                          border: Border.all(
                                            color: Color(0xFF720707),
                                          )),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon:
                                              Icon(Icons.email_outlined),
                                          labelText: 'Email',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 335.w,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(41),
                                          border: Border.all(
                                            color: Color(0xFF720707),
                                          )),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon:
                                              Icon(Icons.lock_open_outlined),
                                          labelText: 'Password',
                                          suffixIcon: Icon(
                                              Icons.remove_red_eye_outlined),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        child: Text(
                                          'Forgot password ?',
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Color(0xFF4E4E4E),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      height: 19,
                                    ),
                                    Container(
                                      width: 243.w,
                                      height: 47,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Color(0xFF720707),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            fontSize: 21.sp,
                                            fontFamily: 'Gilroy Bold',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'OR',
                          style: TextStyle(
                              fontSize: 14.sp, fontFamily: 'Gilroy Medium'),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        TextButton(
                          child: Text(
                            'Login with phone number',
                            style: TextStyle(
                              fontFamily: 'Gilroy Bold',
                              fontSize: 23.sp,
                              color: Color(0xFF720707),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'Login with number');
                          },
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        RichText(
                            text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Not a member yet ?',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Gilroy Medium',
                                )),
                            TextSpan(
                                text: ' Get started',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Gilroy Bold',
                                  color: Color(0xFF720707),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, 'Get started');
                                  }),
                          ],
                        )),
                        SizedBox(
                          height: 84,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'English',
                              style: TextStyle(
                                color: Color(0xFF590D0D),
                                fontSize: 14.sp,
                                fontFamily: 'Gilroy Medium',
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  child: Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                      color: Color(0xFF590D0D),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy Medium',
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  child: Text(
                                    'Cookies',
                                    style: TextStyle(
                                      color: Color(0xFF590D0D),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy Medium',
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
