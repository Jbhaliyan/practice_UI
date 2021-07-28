import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  // const CardItem({ Key? key }) : super(key: key);
  final String imageUrl;
  CardItem(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(imageUrl),
      ),
    );
  }
}
