import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar(
    this.title, {
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  final Size preferredSize;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
        ),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today,
              size: 18,
              color: Colors.black,
            ),
            label: Text(
              DateFormat.MMMMd().format(DateTime.now()).toString(),

              // today,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            )),
        IconButton(
          onPressed: () {},
          color: Colors.black,
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
