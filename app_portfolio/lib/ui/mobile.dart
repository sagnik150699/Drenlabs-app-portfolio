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
  ScrollController controller = ScrollController();

  Color colour1 = Color(0xFF77CBDC);
  Color colour2 = Color(0xFF214C70);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.offset == 0) {
        setState(() {
          colour1 = Color(0xFF77CBDC);
          colour2 = Color(0xFF214C70);
        });
      } else if (controller.offset > 20) {
        setState(() {
          colour1 = Color(0xFF77CBDC);
          colour2 = Color(0xFF214C70);
        });
      }

      print(controller.offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [colour1, colour2],
                ),
              ),
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset("images/Ovalbig.svg"),
                ),
              ],
            ),
            Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset("images/smallrectangle.svg")),
            Align(
                alignment: Alignment.bottomLeft,
                child: SvgPicture.asset("images/Oval.svg")),
            SafeArea(
              child: ListView(
//scrollDirection: Axis.horizontal,
                controller: controller,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.amber[200].withOpacity(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        variables.texts(
                            "Portfolio project by", 25.0, FontWeight.normal),
                        variables.texts("Nicola Cestaro", 25.0, FontWeight.bold)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CarouselSlider(
//carouselController: controller,
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.9,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: [
                        Container(
                          height: 250,
                          child: Column(
                            children: [
                              variables.texts(
                                  "Some App Name", 34.0, FontWeight.bold),
                              variables.texts(
                                  "Goes Here", 34.0, FontWeight.bold),
                              SizedBox(height: 26),
                              variables.texts(
                                  "Revolutionize your work experience and expand your possibility thanks to the resources that the web has to offer ",
                                  20.0,
                                  FontWeight.w300),
                              SizedBox(height: 50),
                              variables.texts(
                                  "MasterPlan", 26.0, FontWeight.w200),
//SizedBox(height: 0),
                            ],
                          ),
                        ),
                      ]),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 300,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      Image(
                        height: 200,
                        image: AssetImage('images/phoneH.png'),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Image(image: AssetImage("images/Group.svg"))
          ],
        ),
      ),
    );
  }
}

//
// SafeArea(
// child: ListView(
// //scrollDirection: Axis.horizontal,
// controller: controller,
// padding: const EdgeInsets.all(8),
// children: <Widget>[
// Container(
// height: 100,
// color: Colors.amber[200].withOpacity(0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// variables.texts("Portfolio project by", 25.0, FontWeight.normal),
// variables.texts("Nicola Cestaro", 25.0, FontWeight.bold)
// ],
// ),
// ),
//
// SizedBox(
// height: 40,
// ),
//
// CarouselSlider(
// //carouselController: controller,
// options: CarouselOptions(
// height: 400,
// aspectRatio: 16/9,
// viewportFraction: 0.9,
// initialPage: 0,
// enableInfiniteScroll: true,
// reverse: false,
// autoPlay: true,
// autoPlayInterval: Duration(seconds: 3),
// autoPlayAnimationDuration: Duration(milliseconds: 800),
// autoPlayCurve: Curves.fastOutSlowIn,
// enlargeCenterPage: true,
// scrollDirection: Axis.horizontal,
// ),
// items:[Container(
// height: 250,
// child: Column(
// children: [
// variables.texts("Some App Name", 34.0,FontWeight.bold),
// variables.texts("Goes Here", 34.0,FontWeight.bold),
// SizedBox(height: 26),
// variables.texts("Revolutionize your work experience and expand your possibility thanks to the resources that the web has to offer ", 20.0,FontWeight.w300),
// SizedBox(height: 50),
// variables.texts("MasterPlan", 26.0, FontWeight.w200),
// //SizedBox(height: 0),
// ],
// ),
// ),]
// ),
// CarouselSlider(
// options: CarouselOptions(
// height: 300,
// aspectRatio: 16/9,
// viewportFraction: 0.9,
// initialPage: 0,
// enableInfiniteScroll: true,
// reverse: false,
// autoPlay: true,
// autoPlayInterval: Duration(seconds: 3),
// autoPlayAnimationDuration: Duration(milliseconds: 800),
// autoPlayCurve: Curves.fastOutSlowIn,
// enlargeCenterPage: true,
// scrollDirection: Axis.horizontal,
// ),
// items:
// [
// Image(
// height: 200,
// image: AssetImage('images/phoneH.png'),
// ),
// ], )
// ],
// ),
// ),
