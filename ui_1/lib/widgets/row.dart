import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow(this.title, this.button);
  final String title;
  final String button;
  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Spacer(),
        // SizedBox(width: 140),
        Text(
          button,
          style: TextStyle(color: Colors.blue[500], fontSize: 13),
        ),
        const Icon(
          Icons.arrow_forward,
          size: 15,
        ),
      ],
    );
  }
}
