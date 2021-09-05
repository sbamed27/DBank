import 'package:flutter/material.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE1E1E1),
      height: 476,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Join us now!',
                style: TextStyle(
                    fontSize: 81,
                    fontFamily: 'Gilroy Bold',
                    color: Color(0xFF590D0D)),
              ),
              Text(
                'Have an unforgettable experience',
                style: TextStyle(
                    fontFamily: 'Gilroy Medium',
                    fontSize: 32,
                    color: Color(0xFF590D0D)),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Your email",
                suffix: SizedBox(
                  height: 102,
                  width: 296,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Get started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
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
          )
        ],
      ),
    );
  }
}
