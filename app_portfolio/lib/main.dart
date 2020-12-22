import 'package:app_portfolio/ui/mobile.dart';
import 'package:flutter/material.dart';
import 'ui/web.dart';

void main() {
  runApp(MyApp());
}

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
          if (constraints.maxWidth > 800) {
            return Web();
          } else {
            return Mobile();
          }
        },
      ),
    );
  }
}
