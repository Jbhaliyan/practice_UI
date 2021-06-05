import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget inputField(BuildContext context, String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 24),
    // height: 45,
    width: MediaQuery.of(context).size.width - 60,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.green,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(24),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.white54,
          fontSize: 14.0,
        ),
      ),
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget levelButton(BuildContext context, Color color, String text) {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      // height: 45,
      width: MediaQuery.of(context).size.width - 60,
      decoration: BoxDecoration(
        // border: Border.all(
        color: color,
        //   style: BorderStyle.solid,
        // ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.openSans(
          textStyle: TextStyle(
            fontSize: 15,
            color: Colors.white54,
          ),
        ),
      ));
}
