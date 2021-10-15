import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class DashboardDesktop extends StatefulWidget {
  @override
  State<DashboardDesktop> createState() => _DashboardDesktopState();
}

/*
 Oussama's PhotoCopy
  */

class _DashboardDesktopState extends State<DashboardDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Row(
        children: [
          DashboardDrawer(),
          Expanded(
            flex: 5,
            child: Container(
              height: MediaQuery.of(context).size.height - 100,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontFamily: 'Gilroy Bold',
                        color: Color(0xFF0E0E0E),
                      ),
                    ),
                    Container(
                      height: 840,
                      padding: EdgeInsets.only(top: 10, left: 15),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Text(
                                  'Recent transactions',
                                  style: TextStyle(
                                    fontFamily: 'Medium',
                                    fontSize: 25.sp,
                                    color: Color(0xFF0E0E0E),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                      'assets/logo/calendar.svg'),
                                  label: Text('20Jun -10 jul'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFF6C0606)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                      'assets/logo/upload_file_black_18dp.svg'),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 760,
                            margin:
                                EdgeInsets.only(right: 20, left: 10, top: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 48,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Nancy Hudson',
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontFamily: 'Gilroy Bold'),
                                            ),
                                            Text(
                                              'your money, thanks!',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '10th July\n2:30 PM',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                    Text(
                                      '+240.00€',
                                      style: TextStyle(
                                        color: Color(0xFF329538),
                                        fontSize: 25.sp,
                                        fontFamily: 'Gilroy Bold',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //width: 485.w,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Form(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: 384.w,
                        height: 50,
                        alignment: Alignment.center,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search_rounded),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 405,
                            width: 485.w,
                            child: Card(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/logo/piggy-bank.svg'),
                                      Text(
                                        'No Account',
                                        style: TextStyle(
                                          fontSize: 31.sp,
                                          fontFamily: 'Gilroy Bold',
                                        ),
                                      ),
                                      Text(
                                        'Set your goal and save for the things\nyou have always wished for',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: 'Gilroy Bold',
                                        ),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Create new savings'),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Color(0xFF6C0606),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 485.w,
                            height: 433,
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Received & Sent Money',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontFamily: 'Gilroy Bold',
                                          color: Color(0xFF7E7E7E),
                                        ),
                                      ),
                                      Text(
                                        '5020 €',
                                        style: TextStyle(
                                          fontSize: 45.sp,
                                          fontFamily: 'Gilroy Bold',
                                          color: Color(0xFF0E0E0E),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 348.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Today',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Color(0xFF7E7E7E),
                                          ),
                                        ),
                                        Text(
                                          'Week',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Color(0xFF7E7E7E),
                                          ),
                                        ),
                                        Text(
                                          'Month',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Color(0xFF7E7E7E),
                                          ),
                                        ),
                                        Text(
                                          'Year',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Color(0xFF7E7E7E),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 227,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: <Color>[
                                        Color(0xFF952424),
                                        Color(0xFF5F0707),
                                        Colors.white,
                                        Colors.white,
                                      ],
                                    )),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(
                                        child: Text('Mar'),
                                        onPressed: () {},
                                      ),
                                      TextButton(
                                        child: Text('Apr'),
                                        onPressed: () {},
                                      ),
                                      TextButton(
                                        child: Text('May'),
                                        onPressed: () {},
                                      ),
                                      TextButton(
                                        child: Text('June'),
                                        onPressed: () {},
                                      ),
                                      TextButton(
                                        child: Text('July'),
                                        onPressed: () {},
                                      ),
                                      TextButton(
                                        child: Text('Aug'),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.android_rounded),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                          label: Text('Mohamed Frs',
                              style: TextStyle(
                                fontSize: 27.sp,
                                fontFamily: 'Gilroy Bold',
                                color: Color(0xFF0E0E0E),
                              )),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My cards',
                          style: TextStyle(
                            fontSize: 27.sp,
                            fontFamily: 'Gilroy Bold',
                            color: Color(0xFF0E0E0E),
                          ),
                        ),
                        TextButton.icon(
                          label: Text('main',
                              style: TextStyle(
                                fontSize: 27.sp,
                                fontFamily: 'Gilroy Medium',
                                color: Color(0xFFA0A0A0),
                              )),
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down_outlined),
                        ),
                      ],
                    ),
                    Image.asset('assets/logo/visa card.png'),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('3602.35 €'),
                            Text('Card balance'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('10000 €'),
                            Text('Card limit'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Card Informations',
                          style: TextStyle(
                            fontSize: 28.sp,
                            fontFamily: 'Gilroy Bold',
                            color: Color(0xFF0E0E0E),
                          ),
                        ),
                        Row(
                          children: [
                            Text('Card number'),
                            Text('4564 0000 0000 0000'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Card type'),
                            Text('VISA Card'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Expiry Date'),
                            Text('00/00'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Status'),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'assets/logo/decision-making.svg'),
                                TextButton.icon(
                                  label: Text('Active'),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Color(0xFFA0A0A0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 87,
                          width: 338.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFF6F0606),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              '+ New Transaction',
                              style: TextStyle(color: Colors.white, fontSize: 26.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollapsibleSidebar(
      backgroundColor: Colors.white,
      items: <CollapsibleItem>[
        CollapsibleItem(
          text: 'Dashboard',
          icon: Icons.home_outlined,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Cards',
          icon: Icons.credit_card_outlined,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Transactions',
          icon: Icons.assessment,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Savings',
          icon: Icons.assessment,
          onPressed: () {},
          isSelected: true,
        ),
        CollapsibleItem(
          text: 'Account',
          icon: Icons.person_pin,
          onPressed: () {},
          isSelected: true,
        ),
      ],
      body: Container(),
    );
  }
}
