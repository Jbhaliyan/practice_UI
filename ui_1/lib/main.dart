import 'package:flutter/material.dart';
import 'package:ui_1/widgets/bottomNavigation.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Diary',
      theme: ThemeData(
        primaryColor: Colors.grey.shade300,
        // buttonTheme:
        // primarySwatch: Colors.white,
      ),
      home: BottomNavigator(),
      // MyHomePage('My Diary'),
    );
  }
}
