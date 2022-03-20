import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'pages/storyPage.dart';
import 'whatsapphome.dart';

late List<CameraDescription> cameras;
// cameras= availableCameras();
Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 17, 99, 47),
        accentColor: Color.fromARGB(255, 17, 99, 47),
        // primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => WhatsAppHome(cameras: cameras),
        StoryPage.routeName: (context) => StoryPage(),
      },
      // home: WhatsAppHome(),
    );
  }
}
