import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAcc extends StatefulWidget {
  @override
  _CreateAccState createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  GlobalKey _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    print(
        '${MediaQuery.of(context).size.height} ${MediaQuery.of(context).size.width}');
    return ScreenUtilInit(
        designSize: Size(393, 760),
        builder: () => Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.teal,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                        flex: 1,
                        child: SvgPicture.asset(
                            'assets/phone/logo/menu_red_24dp.svg')),
                    Flexible(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              'assets/phone/logo/gradient red-black (2).png'),
                          Text(
                            'DEBBAH\nBANK.',
                            style: TextStyle(
                                fontSize: 21.sp,
                                fontFamily: 'Gilroy Bold',
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ));
    /*return ScreenUtilInit(
      designSize: Size(393, 760),
      builder: () => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.tealAccent,
        child: Column(
          children: [
            /*Container(
              /*padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),*/
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 0.1.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(flex: 1, child: SvgPicture.asset('assets/phone/logo/menu_red_24dp.svg')),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            '/assets/phone/logo/gradient red-black (2).png'),
                        Text(
                          'DEBBAH\nBANK.',
                          style: TextStyle(
                              fontSize: 21.sp,
                              fontFamily: 'Gilroy Bold',
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),*/
            SizedBox(
              height: 59,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 1.w,
              ),
              child: Builder(
                builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text(
                        'Create your account',
                        style: TextStyle(
                          fontSize: 27.sp,
                          fontFamily: 'Gilroy Bold',
                          color: Color(0xFF590D0D),
                        ),
                      ),
                      Row(
                        children: [
                          //MyDropDownButton(),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(labelText: 'Phone number', labelStyle: TextStyle(
                              color: Colors.black
                            )),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(41),
                                border: Border.all(color: Color(0xFF720707))),
                            child: TextFormField(
                              decoration: InputDecoration(labelText: 'Password'),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length < 6) {
                                  return 'Please enter valid password';
                                }
                              },
                            ),
                          ),
                          Text(
                            'Use 8 or more characters of letters & numbers',
                            style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 10.sp,
                                fontFamily: 'Gilroy Medium'),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(41),
                                border: Border.all(color: Color(0xFF720707))),
                            child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Confirm Password'),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length < 6) {
                                  return 'Please enter valid password';
                                }
                              },
                            ),
                          ),
                          Checkbox(
                              side: BorderSide(
                                color: Color(0xFF707070),
                              ),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              })
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 286.w,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(onPressed: () {}, child: Text('Next', style: TextStyle(color: Colors.white, fontSize: 18.sp, fontFamily: 'Gilroy Medium'),), style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xFF720707)),
                            ),),
                          ),
                          RichText(text: TextSpan(
                            style: TextStyle(fontSize: 9.5.sp, fontFamily: 'Gilroy Medium', color: Color(0xFF686868)),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'By clicking Next, you are in agreement of ',
                              ),
                              TextSpan(
                                  text: 'terms and conditions',
                                  style: TextStyle(fontSize: 9.5.sp, fontFamily: 'Gilroy Bold', color: Color(0xFF686868)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Terms of Service');
                                    }
                              ),
                              TextSpan(text: ' and you\'ve read our', style: TextStyle(
                                fontSize: 9.5.sp,
                                fontFamily: 'Gilroy Medium',
                                color: Color(0xFF686868)
                              )),
                              TextSpan(
                                  text: ' privacy policy',
                                  style: TextStyle(fontSize: 9.5.sp, fontFamily: 'Gilroy Bold', color: Color(0xFF686868)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Terms of Service');
                                    }
                              ),
                            ]
                          ))
                        ],
                      )
                      // by clicking Next, you are in agreement of Terms and condition and you've read our Privacy Policy
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );*/
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
    MyItem(Image.asset('Flag_of_Algeria.png'), '+213'),
  ];
  late MyItem itemSelected;
  late String myCode;
  late Image myImg;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<MyItem>(
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
                  Text(item.stateCode),
                ],
              )))
          .toList(),
    );
  }
}
