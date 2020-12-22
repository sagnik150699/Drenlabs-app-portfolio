import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red,Colors.purple,Colors.yellow])
      ),

    );
  }
}
