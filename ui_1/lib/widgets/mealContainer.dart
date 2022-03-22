import 'package:flutter/material.dart';
import 'package:ui_1/custom_icons.dart';

import 'mealItem.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({Key? key, required this.item}) : super(key: key);

  final MealItem item;

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(item.title),
            Text(item.description),
          ],
        ),
      ),
    );
  }
}
