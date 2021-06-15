import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fulfit_ui/screens/welcomeScreen/slideItem.dart';
import 'package:fulfit_ui/widgets/widgets.dart';

import 'slide.dart';
import 'slideDots.dart';

class WelcomeScreen extends StatefulWidget {
  // const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 4) {
        _currentPage++;
      } else {
        timer.cancel();
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Slide> _slideList = [
      Slide(
          title: "WHAT'S THIS ?",
          description: "Fulfit keeps you in shape by challenging yourself!!"),
      Slide(
          title: "HOW DOES IT WORK ?",
          description:
              "Challenge yourself to win FitPoints! \\n With these points,you will be able to buy membership or products from our partners."),
    ];
    // final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 0; i <= _slideList.length; i++)
                              if (i == _currentPage)
                                SlideDots(true)
                              else
                                SlideDots(false)
                          ],
                        ),
                      )
                    ],
                  ),
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    itemCount: _slideList.length + 1,
                    onPageChanged: _onPageChanged,
                    itemBuilder: (ctx, i) => SlideItem(i),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profileOne');
                },
                child: googleSignInButton(context)),
            SizedBox(height: 5.0),
            Text(
              '- or -',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 5.0,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profileTwo');
                },
                child: signInButton()),
          ],
        ),
      ),
    );
  }
}
//  