import 'package:debbah_bank_website/home/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Container(
          child: ListView(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/phone/logo/menu.svg'),
              Row(
                children: [
                  SvgPicture.asset('assets/phone/logo/notification (1).svg'),
                  Image.asset('assets/phone/logo/Path 49.png'),
                  Text('Mohamed Frs'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text('My cards', style: TextStyle(
                fontFamily: 'Gilroy Bold',
                fontSize: 17.sp,
                color: Colors.black,
              ),),

            ],
          ),
          Image.asset('assets/phone/logo/VISA CARD phone.png'),
          Row(
            children: [
              Column(),
              Column(),
            ],
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Gilroy Bold',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Week',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Month',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Year',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          //photo
                          Column(
                            children: [
                              // ism
                              // msg
                            ],
                          ),
                          Column(
                            children: [
                              // price
                              // day
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
