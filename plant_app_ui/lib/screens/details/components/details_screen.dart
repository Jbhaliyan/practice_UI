import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  // const DetailsScreen({ Key? key }) : super(key: key);
  static const routename = 'detailscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
