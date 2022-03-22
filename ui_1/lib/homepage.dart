import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_1/widgets/appBar/appBar.dart';
import 'package:ui_1/widgets/appBar/appBar.dart';
import 'package:ui_1/widgets/calorieContainer.dart';
import 'package:ui_1/widgets/row.dart';

import 'widgets/meals.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(widget.title),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomRow('Mediterranean diet', 'Details'),
            Spacer(),
            const CalorieContainer(),
            Spacer(),
            CustomRow('Meals today', 'Customize'),
            Spacer(),
            Meals(),
            Spacer(),
            CustomRow('Body measurement', 'Today'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
