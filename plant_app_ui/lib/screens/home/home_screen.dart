import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';

import 'components/body.dart';
import 'components/my_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomBar(),
    );
  }

  AppBar builAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}
