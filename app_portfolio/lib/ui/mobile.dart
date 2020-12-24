import 'dart:ui';

import 'package:app_portfolio/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

Variables variables = new Variables();

class _MobileState extends State<Mobile> {
  double topONe = 150;
  double topTwo = 360;
  double three = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            setState(
              () {
                topONe = topONe - v.scrollDelta / 25;
                topTwo = topTwo - v.scrollDelta / 30;
                three = three - v.scrollDelta / 25;
              },
            );
          }
          return true;
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [Color(0xFF77CBDC), Color(0xFF214C70)],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: topONe,
              child: SvgPicture.asset("images/Ovalbig.svg"),
            ),
            Positioned(
              top: 450,
              left: topTwo,
              child: SvgPicture.asset("images/smallrectangle.svg"),
            ),
            Positioned(
              top: 600,
              left: three,
              child: SvgPicture.asset("images/Oval.svg"),
            ),
            SafeArea(
              child: Container(
                height: 100,
//color: Colors.amber[200].withOpacity(0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      variables.texts(
                          "Portfolio project by", 25.0, FontWeight.normal),
                      variables.texts("Nicola Cestaro", 25.0, FontWeight.bold)
                    ],
                  ),
                ),
              ),
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    variables.texts("Some App Name", 34.0, FontWeight.bold),
                    variables.texts("Goes Here", 34.0, FontWeight.bold),
                    SizedBox(height: 26),
                    variables.texts("Revolutionize your work experience and",
                        20.0, FontWeight.w300),
                    variables.texts(" expand your possibility thanks to the ",
                        20.0, FontWeight.w300),
                    variables.texts("resources that the web has to offer ",
                        20.0, FontWeight.w300),
                    SizedBox(height: 50),
                    Positioned(
                        //top: 350,
                        child: Image(image: AssetImage("images/master.png")))
                    //variables.texts("MasterPlan", 26.0, FontWeight.w200),
//SizedBox(height: 0),
                  ],
                ),
                Container(
                  width: 800,
                  color: Colors.transparent,
                ),
              ],
            ),
            Positioned(
              top: 450,
                child: Image(image: AssetImage("images/mobile.png")))
          ],
        ),
      )),
    );
  }
}

//
// //Portfilio and nicola
// SafeArea(
// child: Container(
// height: 200,
// //color: Colors.amber[200].withOpacity(0),
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// variables.texts(
// "Portfolio project by", 25.0, FontWeight.normal),
// variables.texts("Nicola Cestaro", 25.0, FontWeight.bold)
// ],
// ),
// ),
// ),
// ),
