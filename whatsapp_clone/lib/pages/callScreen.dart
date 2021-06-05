import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xfff2f2f2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
            callItems(),
            Divider(height: 10.0),
          ],
        ),
      ),
    );
  }
}
