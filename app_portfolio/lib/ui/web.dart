import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:app_portfolio/variables.dart';
import 'dart:math';

class Web extends StatefulWidget {
  Web();
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {

  double leftone = 600;
  double lefttwo = 600;
  double leftthree = 700;
  double leftfour = 1100;
  double leftfive = 0;

  double toptone = 0;
  double toptwo = 0;
  double topthree = 0;
  double topfour = 500;
  double topfive = 0;

  double x=0.0;
  double y = 0.0;
  Variables variables = new Variables();
  final ScrollController controller = ScrollController();
  CarouselController buttonCarouselController1 = CarouselController();

  void _updateLocation4(PointerEvent details) {
    x = details.position.dx;
    y = details.position.dy;
    if(x<1188)
      setState(() {
        leftfour=1000;
      });

    // print("left");
    else if(x>1188)
      setState(() {
        leftfour=1200;
      });
      // print("right");


    if(y<560)
      setState(() {
        topfour=450;
      }); // print("top");
    else if(y>560)
      setState(() {
        topfour=400;
      });

      // print("down");
    // setState(() {
    //
    //
    //
    //
    // });
    // print(x);
    print(y);
  }

  @override
  void initState(){
    setState(() {



      super.initState();
    });

  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    // print(categoryWidth);
    // print(categoryHeight);



    return MaterialApp(
      home: Scaffold(
          body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            setState(() {
              leftone = leftone - v.scrollDelta / 30;
              lefttwo = lefttwo - v.scrollDelta / 30;
              leftthree = leftthree - v.scrollDelta / 30;
              leftfour = leftfour - v.scrollDelta / 30;
              leftfive = leftfive - v.scrollDelta / 30;
            });
          }
          return true;
        },
            child: Stack(
            children: <Widget>[
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
                  left: leftone,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image(image: AssetImage('images/desktopTop.png')),
                  )
                // SvgPicture.asset("images/Ovalbig.svg"),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: CarouselSlider(
                  carouselController: buttonCarouselController1,
                    items:
                    [
                      Row(
                        children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:70.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        variables.texts("Some app name", 50, FontWeight.bold),
                                        variables.texts("Goes Here", 50, FontWeight.bold),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        variables.texts("Revolutionize your work experience and expand your", 16, FontWeight.normal),
                                        variables.texts("possibilities thanks to the resources the web hsa to offer", 16, FontWeight.normal),
                                        Image(image: AssetImage('images/master.png'),),
                                      ],
                                    ),
                                  ),
                                 Expanded(child: Image(image: AssetImage('images/desktopmobile.png')))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:70.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                variables.texts("Some app name", 50, FontWeight.bold),
                                variables.texts("Goes Here", 50, FontWeight.bold),
                                SizedBox(
                                  height: 30,
                                ),
                                variables.texts("Revolutionize your work experience and expand your", 16, FontWeight.normal),
                                variables.texts("possibilities thanks to the resources the web hsa to offer", 16, FontWeight.normal),
                                Image(image: AssetImage('images/master.png'),),
                              ],
                            ),
                          ),
                          Expanded(child: Image(image: AssetImage('images/desktopmobile.png')))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:70.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                variables.texts("Some app name", 50, FontWeight.bold),
                                variables.texts("Goes Here", 50, FontWeight.bold),
                                SizedBox(
                                  height: 30,
                                ),
                                variables.texts("Revolutionize your work experience and expand your", 16, FontWeight.normal),
                                variables.texts("possibilities thanks to the resources the web hsa to offer", 16, FontWeight.normal),
                                Image(image: AssetImage('images/master.png'),),
                              ],
                            ),
                          ),
                          Expanded(child: Image(image: AssetImage('images/desktopmobile.png')))
                        ],
                      ),

                    ],
                    options: CarouselOptions(
                      onPageChanged: (index, carouselPageChangedReason) {
                        // print(index);
                        buttonCarouselController1.animateToPage(index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      height: 600,
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

            Positioned(
                top: categoryHeight / 2,
                left: lefttwo,
                child: Image(
                    image: AssetImage('images/desktopmiddlebigcircle.png'))
                // SvgPicture.asset("images/Ovalbig.svg"),
                ),

            Positioned(
                top: categoryHeight / 1.2,
                left: leftthree,
                child: Image(
                    image: AssetImage('images/desktopmiddlesmallcircle.png'))
                // SvgPicture.asset("images/Ovalbig.svg"),
                ),

            Positioned(
                top: topfour,
                left: leftfour,
                child: MouseRegion(
                  onExit: (detail){
                    print("Stupid");
                    setState(() {
                      leftfour=1100;
                      topfour=500;
                    },
                    );
                  },
                  onHover: _updateLocation4,
                  child: Image(
                      image: AssetImage('images/desktopleftlowercircle.png')),
                )
                // SvgPicture.asset("images/Ovalbig.svg"),
                ),
              //Nicola cestaro
              Padding(
                padding: const EdgeInsets.only(left:100.0, top: 100.0),
                child: Row(
                  children: [
                    variables.texts("Portfilio project by", categoryHeight/34, FontWeight.normal),
                    variables.texts(" Nicola Cestaro", categoryHeight/34, FontWeight.bold)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
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
          ],
        ),
      )),
    );
  }
}

// ),
