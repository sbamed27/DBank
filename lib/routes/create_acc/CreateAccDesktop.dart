import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccDesktop extends StatefulWidget {
  @override
  State<CreateAccDesktop> createState() => _CreateAccDesktopState();
}

class _CreateAccDesktopState extends State<CreateAccDesktop> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background/untitled-1.png'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Container(
            width: 474.w,
            height: 694,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo/gradient red-black (2).png',
                      width: 197.w,
                    ),
                    Text(
                      'DEBBAH\nBANK.',
                      style: TextStyle(
                        fontFamily: 'Gilroy Bold',
                        fontSize: 41.sp,
                        color: Color(0xFF6A0707),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  'Create your Account',
                  style: TextStyle(
                    fontSize: 34.8.sp,
                    fontFamily: 'Gilroy Bold',
                    color: Color(0xFF590D0D),
                  ),
                ),
                SizedBox(
                  height: 39,
                ),
                Row(),
                SizedBox(
                  height: 32,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 335.w,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(41),
                      border: Border.all(color: Color(0xFF720707))),
                  child: TextFormField(
                    cursorColor: Color(0xFF720707),
                    obscureText: !isChecked,
                    decoration: InputDecoration(
                        focusColor: Color(0xFF720707),
                        border: InputBorder.none,
                        labelText: 'Password'),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
                        return 'Please enter valid password';
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text('Use 8 or more characters of letters & numbers'),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 335.w,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(41),
                      border: Border.all(color: Color(0xFF720707))),
                  child: TextFormField(
                    cursorColor: Color(0xFF720707),
                    obscureText: !isChecked,
                    decoration: InputDecoration(
                        focusColor: Color(0xFF720707),
                        border: InputBorder.none,
                        labelText: 'Confirm your password'),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
                        return 'Please enter valid password';
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      Text('Show password'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  width: 243.w,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, 'Verification code');},
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Color(0xFF720707),
                    ),
                  ),
                ),
                SizedBox(
                  height: 43,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(color: Color(0xFF590D0D)),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(color: Color(0xFF590D0D)),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cookies',
                              style: TextStyle(color: Color(0xFF590D0D)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
