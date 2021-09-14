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

    return Scaffold(
        backgroundColor: Colors.white,
        body: MyResponsive(
          desktop: SingleChildScrollView(
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
          phone: HomePhone(),
        ));
  }
}

class HomePhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      designSize: Size(393, 760),
      builder: () => ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background/Artboard 1.png'),
                    fit: BoxFit.cover)),
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
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Get started',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 6.sp,
                                      fontFamily: 'Gilroy Light'),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF925D5D)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          side: BorderSide(color: Colors.red))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text('A global bank\nwith a local feel'),
                    Text('e-bank made by Algerian students'),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle_outline_rounded,
                          size: 18.08.sp,
                        ),
                        label: Text('About Us'))
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
                  Container(
                    width: 100,
                    height: 98,
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
                ],
              )
            ],
          ) // Features.
        ],
      ),
    );
  }
}
