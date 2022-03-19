import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';

import 'components/body.dart';
import 'components/my_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;
    print(width);
    print(height);
    final appBar = AppBar(
      elevation: 0,
      leading: width > 700
          ? null
          : IconButton(
              icon: SvgPicture.asset('assets/icons/menu.svg'),
              onPressed: () {},
            ),
    );

    return Scaffold(
      appBar: appBar,
      body: Body(),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
