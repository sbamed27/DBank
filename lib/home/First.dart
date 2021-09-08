import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'NavBar.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      Image.asset('assets/background/Artboard 1.png'),
      FirstContent(),
    ]);
  }
}

class FirstContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        children: [
          NavBar(),
          BodyContent(),
        ],
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1920, 1080),
        builder: () => Container(
              //color: Colors.lightGreen,
              //padding: EdgeInsets.only(left: 100),
              //width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LeftContent(),
                  Container(
                    width: 1000.w,
                    height: 800,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/background/2210.png'),
                            fit: BoxFit.cover)),
                    //width: 1200,
                    //color: Colors.black.withOpacity(0.2),
                    //child: Image.asset('',),
                  ),
                ],
              ),
            ));
  }
}

class LeftContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1920, 1080),
        builder: () => Container(
              height: 410,
              //color: Colors.grey,
              width: 710,
              margin: EdgeInsets.only(left: 175, bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A global bank with a local feel',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gilroy Bold',
                      fontSize: 96,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'e-bank made by Algerian students',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                        fontFamily: 'Gilroy Medium'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton.icon(
                    onPressed: () {},
                    label: Text(
                      'About Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontFamily: 'Gilroy Medium'),
                    ),
                    icon: Icon(
                      Icons.play_circle_outline_rounded,
                      size: 58,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ));
  }
}
