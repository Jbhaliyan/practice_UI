import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        icons(context, Icons.home_filled),
        icons(context, Icons.search),
        icons(context, Icons.message_rounded),
        icons(context, Icons.person),
      ],
    ),
  );
}

Widget icons(BuildContext context, IconData icon) {
  return Icon(
    icon,
    color: Theme.of(context).primaryIconTheme.color,
    size: Theme.of(context).primaryIconTheme.size,
  );
}

Widget carouselText(String text) {
  return Center(
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}
