import 'dart:ui';
import 'package:app_portfolio/variables.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

Variables variables = new Variables();

class _MobileState extends State<Mobile> {
  double topONe = 150;
  double topTwo = 370;
  double three = -110;

  final ScrollController controller = ScrollController();
  CarouselController buttonCarouselController2 = CarouselController();
  CarouselController buttonCarouselController1 = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    print(categoryWidth);
    print(categoryHeight);

    return MaterialApp(
        home: Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            setState(
              () {
                topONe = topONe - v.scrollDelta / 25;
                topTwo = topTwo - v.scrollDelta / 35;
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
              top: categoryHeight/1.77,
              left: topTwo,
              child: SvgPicture.asset("images/smallrectangle.svg"),
            ),
            Positioned(
              top: categoryHeight/1.32,
              left: three,
              child: SvgPicture.asset("images/Oval.svg"),
            ),
            SafeArea(
              child: Container(
                height: categoryHeight/7.97,
//color: Colors.amber[200].withOpacity(0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      variables.texts(
                          "Portfolio project by", categoryWidth/16.44, FontWeight.normal),
                      variables.texts("Nicola Cestaro", categoryWidth/16.44, FontWeight.bold)
                    ],
                  ),
                ),
              ),
            ),
            //Second Carousel

            //Second Scroll
            SafeArea(
              child: CarouselSlider(
                  carouselController: buttonCarouselController2,
                  items: [
                    //First
                    Stack(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          variables.texts(
                              "Some  App Name", categoryWidth/12.08, FontWeight.bold),
                          variables.texts("Goes Here", categoryWidth/12.08, FontWeight.bold),
                          SizedBox(height: categoryHeight/15),
                          variables.texts(
                              "Revolutionize your work experience and",
                              categoryWidth/21.5,
                              FontWeight.w300),
                          variables.texts(
                              " expand your possibility thanks to the ",
                              categoryWidth/20.55,
                              FontWeight.w300),
                          variables.texts(
                              "resources that the web has to offer ",
                              categoryWidth/20.55,
                              FontWeight.w300),
                          //SizedBox(height: 50),
                          Image(
                            image: AssetImage("images/master.png"),
                          ),
                        ],
                      ),
                      Positioned(
                          top: categoryHeight/1.44,
                          left: 40,
                          child: Image(
                              image: AssetImage("images/croppedmobile.png")))
                    ]),
                    //Second
                    Stack(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          variables.texts(
                              "Some  App Name", categoryWidth/12.08, FontWeight.bold),
                          variables.texts("Goes Here", categoryWidth/12.08, FontWeight.bold),
                          SizedBox(height: categoryHeight/15),
                          variables.texts(
                              "Revolutionize your work experience and",
                              categoryWidth/21.5,
                              FontWeight.w300),
                          variables.texts(
                              " expand your possibility thanks to the ",
                              categoryWidth/20.55,
                              FontWeight.w300),
                          variables.texts(
                              "resources that the web has to offer ",
                              categoryWidth/20.55,
                              FontWeight.w300),
                          //SizedBox(height: 50),
                          Image(
                            image: AssetImage("images/master.png"),
                          ),
                        ],
                      ),
                      Positioned(
                          top: categoryHeight/1.44,
                          left: 40,
                          child: Image(
                              image: AssetImage("images/croppedmobile.png")))
                    ]),
                    //Third
                    Stack(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          variables.texts(
                              "Some  App Name", categoryWidth/12.08, FontWeight.bold),
                          variables.texts("Goes Here", categoryWidth/12.08, FontWeight.bold),
                          SizedBox(height: categoryHeight/15),
                          variables.texts(
                              "Revolutionize your work experience and",
                              categoryWidth/21.5,
                              FontWeight.w300),
                          variables.texts(
                              " expand your possibility thanks to the ",
                              categoryWidth/20.55,
                              FontWeight.w300),
                          variables.texts(
                              "resources that the web has to offer ",
                              categoryWidth/20.55,
                              FontWeight.w300),
                          //SizedBox(height: 50),
                          Image(
                            image: AssetImage("images/master.png"),
                          ),
                        ],
                      ),
                      Positioned(
                          top: categoryHeight/1.44,
                          left: 40,
                          child: Image(
                              image: AssetImage("images/croppedmobile.png")))
                    ]),

                  ],
                  options: CarouselOptions(
                    onPageChanged: (index, CarouselPageChangedReason) {
                      print(index);
                      buttonCarouselController1.animateToPage(index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                    // onScrolled: ,
                    height: 900,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            //First Carousel
            SafeArea(
              child: Align(
                alignment: Alignment(0.5, -0.55),
                child: CarouselSlider(
                  carouselController: buttonCarouselController1,
                  items: [
                    variables.texts("App1", categoryWidth/17.125, FontWeight.bold),
                    variables.texts("App2", categoryWidth/17.125, FontWeight.bold),
                    variables.texts("App3", categoryWidth/17.125, FontWeight.bold),
                    // variables.texts("App3", 24.0, FontWeight.bold),
                  ],
                  options: CarouselOptions(
                    onPageChanged: (index, carouselpagechangedreason) {
                      buttonCarouselController2.animateToPage(index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                    height: 100,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.3,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),

            //Right button
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  // buttonCarouselController2.nextPage(
                  //     duration: Duration(milliseconds: 300),
                  //     curve: Curves.linear);

                  buttonCarouselController1.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                icon: Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            //Left button
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  // buttonCarouselController2.previousPage(
                  //     duration: Duration(milliseconds: 300),
                  //     curve: Curves.linear);
                  buttonCarouselController1.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                icon: Icon(
                  Icons.arrow_left_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
