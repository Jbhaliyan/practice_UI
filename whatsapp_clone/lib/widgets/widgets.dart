import 'package:flutter/material.dart';

Widget statusList(BuildContext context) {
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/avtar.jpg"),
    ),
    title: Text(
      'Jyoti Bhaliyan',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text("Today, 20:16 PM"),
    onTap: () {
      // TODO: implement on Tap
      Navigator.pushNamed(context, '/storyPage');
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

Widget callItems() {
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/avtar.jpg"),
    ),
    title: Text(
      'Jyoti Bhaliyan',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text('Today, 9:12pm'),
    trailing: Icon(
      Icons.video_call,
    ),
  );
  // Divider(height:10.0),
}
