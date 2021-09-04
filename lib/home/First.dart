import 'package:flutter/material.dart';
import 'NavBar.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
    return Container(
      //color: Colors.lightGreen,
      //padding: EdgeInsets.only(left: 100),
      //width: MediaQuery.of(context).size.width,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LeftContent(),
          Container(
            //width: 1000,
            //color: Colors.black.withOpacity(0.2),
            child: Image.asset('assets/background/2210.png', alignment: Alignment.topRight,),
            alignment: Alignment.topRight,
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
      height: 410,
      //color: Colors.grey,
      width: 710,
      margin: EdgeInsets.only(left: 175,bottom: 240),
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
    );
  }
}