import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'pages/callScreen.dart';
import 'pages/cameraScreen.dart';
import 'pages/chatScreen.dart';
import 'pages/statusScreen.dart';

class WhatsAppHome extends StatefulWidget {
  // const WhatsAppHome({Key? key}) : super(key: key);

  WhatsAppHome({required this.cameras});

  final List<CameraDescription> cameras;

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

late TabController _tabController;

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  bool showFab = true;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 4,
      vsync: this,
      // initialIndex: 1,
    );
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  // bController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('WhatsApp'),
          elevation: 0.7,
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(text: 'CHATS'),
              new Tab(text: 'STATUS'),
              new Tab(text: 'CALLS'),
            ],
          ),
          actions: [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
            Icon(Icons.more_vert)
          ]),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(widget.cameras),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: (null),
            )
          : null,
    );
  }
}
