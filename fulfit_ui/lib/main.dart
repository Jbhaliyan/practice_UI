import 'package:flutter/material.dart';
import 'package:fulfit_ui/screens/profilePages/profileOne.dart';
import 'package:fulfit_ui/screens/welcomeScreen/welcomeScreen.dart';

import 'screens/profilePages/profileTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Color c = const Color(0xFFFFFFFF);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF000000),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => WelcomeScreen(),
        '/profileOne': (context) => PageOne(),
        '/profiletwo': (context) => PageTwo(),
      },
      //  Scaffold(
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           'FULFIT ',
      //           style: TextStyle(
      //             color: Colors.green,
      //             fontSize: 60.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         SizedBox(
      //           height: 200,
      //         ),
      //         RaisedButton(
      //           onPressed: null,
      //           color: Colors.white,
      //           child: Text(
      //             'Sign in with Google',
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 22.0,
      //             ),
      //           ),
      //         ),
      //         Text(
      //           '- or -',
      //           style: TextStyle(
      //             fontSize: 20.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         // RaisedButton(onPressed: onPressed)
      //         Text(
      //           'Sign in with Email',
      //           style: TextStyle(
      //             fontSize: 22.0,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
    // throw UnimplementedError();
  }
}
