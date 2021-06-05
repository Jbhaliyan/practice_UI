import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xfff2f2f2),
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.white,
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/avtar.jpg"),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 1.0,
                  child: Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              'My Status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(' Tap to add status'),
            trailing: Icon(
              Icons.more_horiz,
              color: Theme.of(context).primaryColor,
            ),
          ),
          statusPadding('Recent updates'),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      statusList(context),
                      Divider(height: 10.0),
                      statusList(context),
                      Divider(height: 10.0),
                      statusList(context),
                      Divider(height: 10.0),
                      statusList(context),
                      Divider(height: 10.0),
                      statusList(context),
                      Divider(height: 10.0),
                      statusList(context),
                      Divider(height: 10.0),
                      statusList(context),
                      Divider(height: 10.0),
                      statusList(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
          statusPadding('Viewed Updates'),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: [
                  statusList(context),
                  Divider(
                    height: 10.0,
                  ),
                  statusList(context),
                  Divider(
                    height: 10.0,
                  ),
                  // statusList(context),
                  // Divider(
                  //   height: 10.0,
                  // ),
                  // statusList(context),
                  // Divider(
                  //   height: 10.0,
                  // ),
                  // statusList(context),
                  // Divider(
                  //   height: 10.0,
                  // ),
                  // statusList(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
