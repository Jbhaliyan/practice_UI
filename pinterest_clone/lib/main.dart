import 'package:flutter/material.dart';
import 'package:pinterest_clone/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        focusColor: Colors.white,
        primaryIconTheme: IconThemeData(
          opacity: 1,
          color: Colors.white,
          size: 28,
        ),
      ),
      home: HomePage(),
    );
  }
}
