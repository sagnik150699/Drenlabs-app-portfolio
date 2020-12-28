import 'package:app_portfolio/ui/mobile.dart';
import 'package:flutter/material.dart';
import 'ui/web.dart';

void main() {
  runApp(MyApp());
}
//hello world
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return Web();
          } else {
            return Mobile();
          }
        },
      ),
    );
  }
}
