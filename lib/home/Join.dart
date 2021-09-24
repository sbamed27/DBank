import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Join extends StatelessWidget {

  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Container(
        key: dataKey,
        //padding: EdgeInsets.symmetric(horizontal: 70),
        color: Color(0xFFE1E1E1),
        height: 476,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Join us now!',
                  style: TextStyle(
                      fontSize: 81.sp,
                      fontFamily: 'Gilroy Bold',
                      color: Color(0xFF590D0D)),
                ),
                Text(
                  'Have an unforgettable experience',
                  style: TextStyle(
                      fontFamily: 'Gilroy Medium',
                      fontSize: 32.sp,
                      color: Color(0xFF590D0D)),
                ),
              ],
            ),
            Container(
              /*border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(27)
              ),*/
              width: 891.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(27)
              ),
              padding: EdgeInsets.only(right: 10.w),
              child: Builder(
                builder: (context) => Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return 'Please enter a valid email';
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Your email',
                      suffix: SizedBox(
                        height: 102,
                        width: 296.w,
                        child: TextButton(
                          onPressed: () {
                            final form = _formKey.currentState;
                            if (form != null && form.validate()) {print('Email valide!');}
                          },
                          child: Text(
                            'Get started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 42.sp,
                                fontFamily: 'Gilroy Light'),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.red))),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF590D0D)),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}
