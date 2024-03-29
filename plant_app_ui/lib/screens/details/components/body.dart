import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:plant_app_ui/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: [
        ImageAndIcons(size: size),
        TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
        SizedBox(height: kDefaultPadding),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 16, color: kTextColor),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: kDefaultPadding * 2),
      ],
    ));
  }
}
