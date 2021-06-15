import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

Widget signInButton() {
  return TextButton(
    onPressed: null,
    child: Text("SIGN IN WITH EMAIL",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 18.0)),
  );
}

Widget googleSignInButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
    child: Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(width: 20),
          SvgPicture.asset("assets/google.svg", height: 25, width: 25),
          SizedBox(width: 15.0),
          Text(
            "Sign in with Google",
            style: TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
