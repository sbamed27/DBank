import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'NavBar.dart';

class First extends StatelessWidget {
  final dataKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      key: dataKey,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background/Artboard 1.png'),
            fit: BoxFit.cover),
      ),
      child: FirstContent(),
    );
  }
}

class FirstContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          MediaQuery.of(context).size.width > 900 ? NavBar() : TabletNavBar(),
          BodyContent(),
        ],
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftContent(),
          Container(
            width: 1000.w,
            height: 850,
            margin: EdgeInsets.only(right: 10.w),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background/2210.png'),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}

class LeftContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410.h,
      width: 710.w,
      margin: EdgeInsets.only(left: 175.w, bottom: 80.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'A global bank with a local feel',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Gilroy Bold',
              fontSize: 96.sp,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'e-bank made by Algerian students',
            style: TextStyle(
                color: Colors.white,
                fontSize: 44.sp,
                fontFamily: 'Gilroy Medium'),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text(
              'About Us',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 44.sp,
                  fontFamily: 'Gilroy Medium'),
            ),
            icon: Icon(
              Icons.play_circle_outline_rounded,
              size: 58.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class TabletNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: SvgPicture.asset('assets/phone/logo/menu_white_24dp.svg')),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo/white (32px)@2x.png'),
                      ),
                    ),
                  ),
                  Text(
                    'DEBBAH\nBANK.',
                    style: TextStyle(
                        fontFamily: 'Gilroy Bold',
                        fontSize: 32.sp,
                        color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 24.sp,
                            color: Colors.white),
                      )),
                  SizedBox(width: 18.w),
                  ElevatedButton(
                    onPressed: () {Navigator.of(context).pushNamed('Get started');},
                    child: Text(
                      'Get started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF0E0E0E),
                          fontSize: 26.sp,
                          fontFamily: 'Gilroy Light'),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}

