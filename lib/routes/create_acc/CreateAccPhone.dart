import 'package:debbah_bank_website/home/Home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CreateAccPhone extends StatefulWidget {
  @override
  _CreateAccPhoneState createState() => _CreateAccPhoneState();
}

class _CreateAccPhoneState extends State<CreateAccPhone> {
  static String redMenuSvg = 'assets/phone/logo/menu_red_24dp.svg';

  GlobalKey _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        body: Builder(builder: (context) {
          return SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: SvgPicture.asset(redMenuSvg)),
                      ),
                      Flexible(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset(
                                  'assets/phone/logo/gradient red-black (2).png'),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'Home');
                                },
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
                  height: 59,
                ),
                Text(
                  'Create your account',
                  style: TextStyle(
                    fontSize: 27.sp,
                    fontFamily: 'Gilroy Bold',
                    color: Color(0xFF590D0D),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  padding: EdgeInsets.only(left: 36.w, right: 42.w),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              IntlPhoneField(
                                initialCountryCode: 'DZ',
                                iconPosition: IconPosition.trailing,
                                dropDownIcon: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Color(0xFF720707),
                                ),
                                dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(41),
                                    border:
                                        Border.all(color: Color(0xFF720707))),
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF720707)),
                                    borderRadius: BorderRadius.circular(41),
                                  ),
                                ),
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                                onCountryChanged: (phone) {
                                  print('Country code changed to: ' +
                                      phone.countryCode!);
                                },
                              ),
                              SizedBox(
                                height: 27,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    height: 47,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(41),
                                        border: Border.all(
                                            color: Color(0xFF720707))),
                                    child: TextFormField(
                                      obscureText: !isChecked,
                                      decoration: InputDecoration(
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
                                  SizedBox(height: 5),
                                  Text(
                                    'Use 8 or more characters of letters & numbers',
                                    style: TextStyle(
                                        color: Color(0xFF4E4E4E),
                                        fontSize: 10.sp,
                                        fontFamily: 'Gilroy Medium'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    height: 47,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(41),
                                        border: Border.all(
                                            color: Color(0xFF720707))),
                                    child: TextFormField(
                                      obscureText: !isChecked,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Confirm Password'),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value.length < 6) {
                                          return 'Please enter valid password';
                                        }
                                      },
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          side: BorderSide(
                                            color: Color(0xFF707070),
                                          ),
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          }),
                                      Text(
                                        'Show password',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: 'Gilroy Medium',
                                            color: Color(0xFF4E4E4E)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 286.w,
                                    height: 38,
                                    child: TextButton(
                                      onPressed: () {Navigator.pushNamed(context, 'Verification code');},
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: 'Gilroy Medium'),
                                      ),
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        )),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xFF720707)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 9.5.sp,
                                              fontFamily: 'Gilroy Medium',
                                              color: Color(0xFF686868)),
                                          children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'By clicking Next, you are in agreement of ',
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
                                      ]))
                                ],
                              )
                              // by clicking Next, you are in agreement of Terms and condition and you've read our Privacy Policy
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
/*
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            //Image.asset('assets/phone/logo/gradient red-black.png'),
            child: Text('DEBBAH\nBANK.',
                style: TextStyle(
                  fontFamily: 'Gilroy Bold',
                  fontSize: 17.sp,
                  color: Color(0xFF441211),
                )),
          ),
          //Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/phone/logo/home.svg'),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Gilroy Medium',
                color: Color(0xFF212121),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Features',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Gilroy Medium',
                color: Color(0xFF212121),
              ),
            ),
            leading: SvgPicture.asset('assets/phone/logo/jigsaw.svg'),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'About us',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Gilroy Medium',
                color: Color(0xFF212121),
              ),
            ),
            leading: SvgPicture.asset('assets/phone/logo/file.svg'),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Support',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Gilroy Medium',
                color: Color(0xFF212121),
              ),
            ),
            leading: SvgPicture.asset('assets/phone/logo/support (1).svg'),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'English',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Gilroy Medium',
                color: Color(0xFF212121),
              ),
            ),
            leading: SvgPicture.asset('assets/phone/logo/united-kingdom.svg'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}*/
