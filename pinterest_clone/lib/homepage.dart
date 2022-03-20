import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_clone/pageItems.dart';
import 'package:pinterest_clone/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> pins = [
    'All',
    'Hairstyles',
    'Learn English',
    'Profile',
    'room decor',
    'All',
    'Hairstyles',
    'Learn English',
    'Profile',
    'room decor',
  ];
  // List _isSelected = [
  //   true,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false
  // ];
  int _current = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(
                  top: mediaQuery.size.height / 50,
                  bottom: mediaQuery.size.height / 50),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < pins.length; i++)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: carouselText(pins[i]),
                        ),
                        // Visibility(
                        //   visible: _isSelected[i],
                        //   child: Container(
                        //     height: 5,
                        //     width: screenSize.width / 10,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(10)),
                        //   ),
                        // ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  CarouselSlider.builder(
                    itemBuilder: (ctx, int index, int realIndex) =>
                        GridPage(mediaQuery),
                    itemCount: pins.length,
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      viewportFraction: 1,
                      height: double.infinity,
                      onPageChanged: (index, _) {
                        setState(() {
                          _current = index;
                          // for (int i = 0; i < pins.length; i++) {
                          //   if (i == index) {
                          //     _isSelected[i] = true;
                          //     // SelectedPin(true, i);
                          //   } else {
                          //     _isSelected[i] = false;
                          //   }
                          // }
                        });
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 20.0,
                    left: 20.0,
                    child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: 100),
                        width: mediaQuery.size.width / 8,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.grey[800],
                        ),
                        child: bottomBar(context, mediaQuery)),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
