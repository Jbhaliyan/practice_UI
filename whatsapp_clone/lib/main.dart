import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/authscreen.dart';

import 'pages/storyPage.dart';
import 'whatsapphome.dart';

late List<CameraDescription> cameras;
// cameras= availableCameras();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          primarySwatch: Colors.green //.fromARGB(, r, g, b),),
          // elevatedButtonTheme: ElevatedButtonTheme()
          ),
      routes: {
        '/': (context) =>
            // WhatsAppHome(cameras: cameras),
            AuthScreen(),
        WhatsAppHome.routeName: (context) => WhatsAppHome(cameras: cameras),
        StoryPage.routeName: (context) => StoryPage(),
      },
      // home: WhatsAppHome(),
    );
  }
}
