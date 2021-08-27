import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/constants.dart';

import 'featured_plants.dart';
import 'header_with_search_box.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecommendPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
