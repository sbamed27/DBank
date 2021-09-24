import 'package:debbah_bank_website/icons_dart_files/d_bank_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {

  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
        key: dataKey,
        color: Color(0xFFE1E1E1),
        height: 474,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 200.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Links',
                  style: TextStyle(
                      color: Color(0xFF590D0D),
                      fontSize: 37.sp,
                      fontFamily: 'Gilroy Bold'),
                ),
                Container(
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: TextStyle(
                              color: Color(0xFF606060),
                              fontSize: 28.sp,
                              fontFamily: 'Gilroy Medium'),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Features',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'About us',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Us ',
                  style: TextStyle(
                      color: Color(0xFF590D0D),
                      fontSize: 37.sp,
                      fontFamily: 'Gilroy Bold'),
                ),
                Container(
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '+213554513129',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'debbahbank@support.com',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'akis street, oran, 31000',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Follow Us',
                  style: TextStyle(
                      color: Color(0xFF590D0D),
                      fontSize: 37.sp,
                      fontFamily: 'Gilroy Bold'),
                ),
                Container(
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.facebook,
                            color: Color(0xFF590D0D),
                          ),
                          label: Text(
                            'Facebook',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            DBank.twitter,
                            color: Color(0xFF590D0D),
                          ),
                          label: Text(
                            'Twitter',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            DBank.instagram,
                            color: Color(0xFF590D0D),
                          ),
                          label: Text(
                            'Instagram',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FAQ',
                  style: TextStyle(
                      color: Color(0xFF590D0D),
                      fontSize: 37.sp,
                      fontFamily: 'Gilroy Bold'),
                ),
                Container(
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'How can I order a visa card?',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'I forgot my password!',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'What are your services?',
                            style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 28.sp,
                                fontFamily: 'Gilroy Medium'),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
    );
  }
}
