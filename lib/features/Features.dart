import 'package:flutter/material.dart';
import '../icons_dart_files/d_bank_icons.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Awesome features',
          style: TextStyle(
              color: Colors.black, fontSize: 84, fontFamily: 'Gilroy Bold'),
        ),
        SizedBox(height: 49,),
        Text('access from all devices PC, PHONE and TABLET', style: TextStyle(
          fontSize: 29,
          fontFamily: 'Gilroy Light'
        ),),
        SizedBox(height: 71,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(DBank.responsive, size: 134),
                      Text(
                        'Everywhere access',
                        style:
                            TextStyle(fontSize: 36, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style:
                            TextStyle(fontSize: 22, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  ),
                  SizedBox(height: 92,),
                  Column(
                    children: [
                      Icon(DBank.support, size: 134,),
                      Text(
                        '24 Hours support',
                        style:
                            TextStyle(fontSize: 36, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style:
                            TextStyle(fontSize: 22, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Image.asset('assets/background/1576.png'),
            ),
            Container(
              child: Column(//
                children: [
                  Column(
                    children: [
                      Icon(DBank.two_tone, size: 134,),
                      Text(
                        'Free download',
                        style:
                        TextStyle(fontSize: 36, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style:
                        TextStyle(fontSize: 22, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  ),
                  SizedBox(height: 92,),
                  Column(
                    children: [
                      Icon(DBank.verified, size: 134,),
                      Text(
                        'High security',
                        style:
                        TextStyle(fontSize: 36, fontFamily: 'Gilroy Bold'),
                      ),
                      Text(
                        'access from all devices (PC, PHONE and TABLET)',
                        style:
                        TextStyle(fontSize: 22, fontFamily: 'Gilroy Light'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
