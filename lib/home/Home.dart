import 'package:debbah_bank_website/icons_dart_files/d_bank_icons.dart';
import 'package:debbah_bank_website/phone/create_acc/CreateAcc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../MyResponsive.dart';
import 'package:flutter/material.dart';
import '../Join.dart';
import '../Download.dart';
import '../About.dart';
import '../Features.dart';
import 'First.dart';
import '../Last.dart';

class Home extends StatelessWidget {
/*
  static List myList = <Widget>[
    First(),
    Features(),
    Join(),
    Download(),
    About(),
    Last()
  ];
*/
  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).size.width}');

    return MyResponsive(
      desktop: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
              children: [
                First(),
                SizedBox(height: 71),
                Features(),
                SizedBox(height: 78),
                Join(),
                SizedBox(height: 86),
                Download(),
                SizedBox(height: 98),
                About(),
                Last(),
              ],
            ),
          ),
      ),
      phone: Scaffold(
        body: /*HomePhone(),*/CreateAcc(),
      ),);
  }
}

class HomePhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    // TODO: implement build
    return ScreenUtilInit(
      designSize: Size(375, 768),
      builder: () => ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.tealAccent,
                image: DecorationImage(
              image: AssetImage('assets/phone/background/Artboard 1.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(
                              'assets/phone/logo/menu_white_24dp.svg'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FittedBox(
                                child:
                                    Image.asset('assets/logo/white (32px).png'),
                              ),
                              Text(
                                'DEBBAH\nBANK.',
                                style: TextStyle(
                                    fontFamily: 'Gilroy Bold',
                                    fontSize: 10.sp,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 6.sp,
                                      fontFamily: 'Gilroy Medium'),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Get started',
                                    style: TextStyle(
                                        color: Color(0xFF0E0E0E),
                                        fontSize: 7.sp,
                                        fontFamily: 'Gilroy Light'),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      //side: BorderSide(color: Colors.red),
                                    )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 31),
                Column(
                  children: [
                    Text(
                      'A global bank',
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: 'Gilroy Bold',
                          color: Colors.white),
                    ),
                    Text(
                      'with a local feel',
                      style: TextStyle(
                          fontSize: 25.5.sp,
                          fontFamily: 'Gilroy Bold',
                          color: Colors.white),
                    ),
                    Text(
                      'e-bank made by Algerian students',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Gilroy Medium',
                          color: Colors.white),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.play_circle_outline_rounded,
                            size: 18.08.sp, color: Colors.white),
                        label: Text(
                          'About Us',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Colors.white),
                        ))
                  ],
                ),
                FittedBox(
                    child: Image.asset('assets/phone/background/1576.png'))
              ],
            ),
          ),
          SizedBox(height: 46),
          Column(
            // Features.
            children: [
              Column(
                children: [
                  Text(
                    'Awesome features',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontFamily: 'Gilroy Bold',
                        color: Colors.black),
                  ),
                  Text(
                    'access from all devices PC, PHONE and TABLET',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: 'Gilroy Light',
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 39),
              Column(
                children: [
                  Column(
                    // Unit
                    children: [
                      Container(
                        width: 100,
                        height: 102,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(51)
                            //more than 50% of width makes circle
                            ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/phone/logo/responsive.svg',
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Everywhere access',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'can access from all devices, everywhere access\neverywhere access anywhere access',
                        style: TextStyle(
                            fontSize: 8.sp, fontFamily: 'Gilroy Light'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  Column(
                    // Unit
                    children: [
                      Container(
                        width: 100,
                        height: 102,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(51)
                            //more than 50% of width makes circle
                            ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/phone/logo/support.svg',
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        '24 Hours support',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'can access from all devices, everywhere access\neverywhere access anywhere access',
                        style: TextStyle(
                            fontSize: 8.sp, fontFamily: 'Gilroy Light'),
                      )
                    ],
                  ),
                  SizedBox(height: 46),
                  Column(
                    // Unit
                    children: [
                      Container(
                        width: 100,
                        height: 102,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(51)
                            //more than 50% of width makes circle
                            ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/phone/logo/Two Tone.svg',
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Free download',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'can access from all devices, everywhere access\neverywhere access anywhere access',
                        style: TextStyle(
                            fontSize: 8.sp, fontFamily: 'Gilroy Light'),
                      )
                    ],
                  ),
                  SizedBox(height: 46),
                  Column(
                    // Unit
                    children: [
                      Container(
                        width: 100,
                        height: 102,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(51)
                            //more than 50% of width makes circle
                            ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/phone/logo/verified.svg',
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'High security',
                        style: TextStyle(
                            fontSize: 22.sp, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'can access from all devices, everywhere access\neverywhere access anywhere access',
                        style: TextStyle(
                            fontSize: 8.sp, fontFamily: 'Gilroy Light'),
                      )
                    ],
                  ),
                ],
              )
            ],
          ), // Features.
          SizedBox(height: 70),
          Container( // Join
              color: Color(0xFFE1E1E1),
              height: 263,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Join us now!'),
                      Text('Have an unforgettable experience'),
                    ],
                  ),
                  Container(
                    /*border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(27)
              ),*/
                    width: 263.w,
                    height: 39,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27.sp)),
                    padding: EdgeInsets.only(right: 10.w),
                    child: Builder(
                      builder: (context) => Form(
                        key: _formKey,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Please enter a valid email';
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your email',
                            suffix: SizedBox(
                              height: 29,
                              width: 89.w,
                              child: TextButton(
                                onPressed: () {
                                  final form = _formKey.currentState;
                                  if (form != null && form.validate()) {
                                    print('Email valide!');
                                  }
                                },
                                child: Text(
                                  'Get started',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontFamily: 'Gilroy Light'),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          side: BorderSide(color: Colors.red))),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF590D0D)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 32,
          ),
          Container(
              // Download
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image.asset('assets/phone/background/15762.png'),
                  Text(
                    'Download the app foryour android and iphone',
                    style:
                        TextStyle(fontSize: 25.sp, fontFamily: 'Gilroy Bold'),
                  ),
                  Column(
                    children: [
                      Text(
                          'you can access from all devices (PC, PHONE and TABLET)'),
                      Text('download the app from down'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          DBank.android,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                        label: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GET IT ON',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Light',
                                fontSize: 10.sp,
                              ),
                            ),
                            Text(
                              'Google Play',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Medium',
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size(230.w, 60)),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF590D0D))),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          DBank.android,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                        label: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Available on the',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Light',
                                fontSize: 10.sp,
                              ),
                            ),
                            Text(
                              'App Store',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Medium',
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size(230.w, 60)),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF590D0D))),
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 45.47,
          ),
          Container(
            // About
            height: 620,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFE1E1E1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Links',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Gilroy Bold',
                          color: Color(0xFF590D0D)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Features',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'About us',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                          fontSize: 19.sp,
                          fontFamily: 'Gilroy Bold',
                          color: Color(0xFF590D0D)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'debbahbank@support.com',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Akid street, Oran, 31000',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '+213554513129',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'FAQ',
                      style: TextStyle(
                          fontSize: 19.sp,
                          fontFamily: 'Gilroy Bold',
                          color: Color(0xFF590D0D)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'How can I order a visa card?',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'What are your services?',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'i forgot my password!',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Color(0xFF606060)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Follow Us',
                      style: TextStyle(
                          fontSize: 23.sp,
                          fontFamily: 'Gilroy Bold',
                          color: Color(0xFF590D0D)),
                    ),
                    Container(
                      width: 144.w,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  DBank.facebook,
                                  color: Color(0xFF590D0D),
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  DBank.instagram,
                                  color: Color(0xFF590D0D),
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  DBank.twitter,
                                  color: Color(0xFF590D0D),
                                )),
                          ]),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 11.w),
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
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(
                  'All Rights Reserved, Debbah bank © 2021',
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontFamily: 'Gilroy Medium',
                      color: Colors.white),
                ),
                Spacer(),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy policy',
                          style: TextStyle(
                              fontSize: 8.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cookies',
                          style: TextStyle(
                              fontSize: 8.sp,
                              fontFamily: 'Gilroy Medium',
                              color: Colors.white),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
