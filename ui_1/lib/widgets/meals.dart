import 'package:flutter/material.dart';
import 'package:ui_1/widgets/mealContainer.dart';

import 'mealItem.dart';

class Meals extends StatelessWidget {
  // final String title;
  // final String description;
  List<MealItem> items = [
    MealItem(
        color: Color.fromRGBO(255, 171, 64, 1),
        title: 'Breakfast',
        description: 'Bread,\nPeanut butter,\nApple'),
    MealItem(
        color: Color.fromRGBO(68, 138, 255, 1),
        title: 'Lunch',
        description: 'Salmon,\nmixed veggies,\nAvocado'),
    MealItem(
        color: Color.fromRGBO(255, 64, 129, 1),
        title: 'Snack',
        description: 'Recommend:'),
    MealItem(
        color: Color.fromRGBO(255, 82, 82, 1),
        title: 'Dinner',
        description: 'Rajma Chawal')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height * .20,
      child: ListView.separated(
          itemCount: 4,
          separatorBuilder: (context, _) => SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            // ignore: prefer_const_literals_to_create_immutables

            return MealContainer(item: items[index]);
          }
          // Text('HEllo'),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(description),

          ),
    );
  }
}
