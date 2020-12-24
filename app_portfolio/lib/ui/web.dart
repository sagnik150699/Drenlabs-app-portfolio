import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  double one=0;
  double two = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: NotificationListener(
          onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            setState(() {
              one=one-v.scrollDelta/3;
              two=two-v.scrollDelta/3;
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
            // Positioned(
            //   top: 450,
            //   left: one,
            //   child: SvgPicture.asset("images/eliment1.svg"),
            // ),
            Text("data")

          ],
        ),
      )),
    );
  }
}

// ),
