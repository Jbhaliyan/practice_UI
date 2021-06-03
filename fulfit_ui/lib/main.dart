import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(
              'FULFIT ',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
