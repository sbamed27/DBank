import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.person_pin,
                  size: 160,
                  color: Colors.white,
                ),
                label: Text(
                  'DEBBAH\nBANK.',
                  style: TextStyle(
                      fontFamily: 'Gilroy Bold',
                      fontSize: 55,
                      color: Colors.white),
                )),
          ),
          SizedBox(width: 116),
          Container(
            width: 704.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontFamily: 'Gilroy Medium',
                          fontSize: 31,
                          color: Colors.white),
                    ),
                  shape: Border(bottom: BorderSide(
                    color: Colors.white,
                  )),
                ),
                //SizedBox(width: 80),
                FlatButton(
                    onPressed: () {},
                    child: Text('Features',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31,
                            color: Colors.white))),
                //SizedBox(width: 80),
                FlatButton(
                    onPressed: () {},
                    child: Text('About Us',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31,
                            color: Colors.white))),
                //SizedBox(width: 80),
                FlatButton(
                    onPressed: () {},
                    child: Text('Support',
                        style: TextStyle(
                            fontFamily: 'Gilroy Medium',
                            fontSize: 31,
                            color: Colors.white))),
              ],
            ),
          ),
          SizedBox(width: 170),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontFamily: 'Gilroy Medium',
                        fontSize: 31,
                        color: Colors.white),
                  )),
              SizedBox(width: 25),
              SizedBox(
                height: 75,
                width: 218,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Get started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 31,
                        fontFamily: 'Gilroy Light'),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF925D5D).withOpacity(0.56),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
