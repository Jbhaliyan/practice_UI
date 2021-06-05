import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
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
            ),
          ),
          statusPadding('Recent updates'),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: [
                  statusList(context, 'Ravi'),
                  statusList(context, 'Krishna'),
                  statusList(context, 'Vanya'),
                ],
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
                  statusList(context, 'Pawan Kumar'),
                  statusList(context, 'Abhishek'),
                  statusList(context, 'Veer'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
