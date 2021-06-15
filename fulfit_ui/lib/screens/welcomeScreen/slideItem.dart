import 'package:flutter/material.dart';
import 'slide.dart';

class SlideItem extends StatelessWidget {
  // const SlideItem({ Key? key }) : super(key: key);

  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    final slideList = [
      Slide(
          title: "WHAT'S THIS ?",
          description: "Fulfit keeps you in shape by challenging yourself!!"),
      Slide(
          title: "HOW DOES IT WORK ?",
          description:
              "Challenge yourself to win FitPoints!/n With these points,you will be able to buy membership or products from our partners."),
    ];
    // Slide slide;
    return index == 0
        ? Center(
            child: Container(
              child: Text(
                "FULFIT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                slideList[index - 1].title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                slideList[index - 1].description,
                // slideList[index - 1].description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  // fontSize: 20,
                  color: Colors.white,
                ),
              )
            ],
          );
  }
}
