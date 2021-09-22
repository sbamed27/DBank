import 'package:debbah_bank_website/home/Home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAcc extends StatefulWidget {
  @override
  _CreateAccState createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  static String redMenuSvg = 'assets/phone/logo/menu_red_24dp.svg';

  GlobalKey _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    print(
        '${MediaQuery.of(context).size.height} ${MediaQuery.of(context).size.width}');
    return ScreenUtilInit(
      designSize: Size(393, 760),
      builder: () => SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: SvgPicture.asset(redMenuSvg),
                    ),
                    SizedBox(
                      width: 0.2.sw,
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
                              onPressed: () {Navigator.pushNamed(context, 'Home');},
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(41),
                                      border:
                                          Border.all(color: Color(0xFF720707))),
                                  width: 89.w,
                                  child: MyDropDownButton(),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(41),
                                      border:
                                          Border.all(color: Color(0xFF720707))),
                                  height: 50,
                                  width: 200.w,
                                  //  (MediaQuery.of(context).size.width / 3).w,
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Phone number',
                                        labelStyle: TextStyle(
                                            fontFamily: 'Gilroy Medium',
                                            color: Color(0xFF4E4E4E))),
                                    validator: (value) {
                                      if (value == null || value.isEmpty)
                                        return 'Plz ...';
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 27,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 47,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(41),
                                      border:
                                          Border.all(color: Color(0xFF720707))),
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
                            SizedBox(height: 13,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 47,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(41),
                                      border:
                                          Border.all(color: Color(0xFF720707))),
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
                                    Text('Show password', style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Gilroy Medium',
                                      color: Color(0xFF4E4E4E)
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Column(
                              children: [
                                Container(
                                  width: 286.w,
                                  height: 38,
                                  child: TextButton(
                                    onPressed: () {},
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
                                SizedBox(height: 5,),
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
                                        /*style: TextStyle(
                                            fontSize: 9.5,
                                            fontFamily: 'Gilroy Medium',
                                            color: Color(0xFF686868)),*/
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
        ),
      ),
    );
  }
}

class MyItem {
  Image myFlag;
  String stateCode;

  MyItem(this.myFlag, this.stateCode);
}

class MyDropDownButton extends StatefulWidget {
  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  static List<MyItem> myList = <MyItem>[
    MyItem(Image.asset('assets/phone/logo/Flag_of_Algeria.png'), '+213'),
    MyItem(Image.asset('assets/phone/logo/Flag_of_Algeria.png'), '+223'),
    MyItem(Image.asset('assets/phone/logo/Flag_of_Algeria.png'), '+233'),
    MyItem(Image.asset('assets/phone/logo/Flag_of_Algeria.png'), '+243'),
  ];
  MyItem itemSelected = myList[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<MyItem>(
      alignment: Alignment.center,
      iconEnabledColor: Color(0xFF720707),
      value: itemSelected,
      onChanged: (newItem) {
        setState(() {
          if (newItem != null) itemSelected = newItem;
        });
      },
      items: myList
          .map((MyItem item) => DropdownMenuItem<MyItem>(
              value: item,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  item.myFlag,
                  Text(item.stateCode,
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: 'Gilroy Medium',
                          color: Color(0xFF720707))),
                ],
              )))
          .toList(),
    );
  }
}
