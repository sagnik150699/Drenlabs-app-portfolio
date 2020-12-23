import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.teal,Colors.purple,Colors.yellow])
          ),
          child: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.amber[200].withOpacity(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Portfolio project by",
                        style: GoogleFonts.roboto(
                          fontSize: 20,textStyle: TextStyle(
                          color: Colors.white
                        )
                      ),),
                      Text(" Nicola Cestaro", style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white,
                        fontSize: 20
                      ),)
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
