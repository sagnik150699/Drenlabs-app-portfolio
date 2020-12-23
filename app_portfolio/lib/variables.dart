import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Variables {
  Text texts(String str, size, fontWeight ) {
   return Text(
      str,
     textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: size,
        textStyle: TextStyle(color: Colors.white, fontWeight: fontWeight),
      ),
    );
  }
}
