import 'package:flutter/material.dart';

Widget statusList(String name) {
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/avtar.jpg"),
    ),
    title: Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text("Today, 20:16 PM"),
    onTap: () {
      // TODO: implement on Tap
    },
  );
}

Widget statusPadding(String text) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
