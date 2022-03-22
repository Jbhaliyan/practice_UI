// ignore_for_file: unnecessary_const

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../custom_icons.dart';

class CalorieContainer extends StatelessWidget {
  const CalorieContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child:
          // SizedBox(height: 100, width: 100)
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Eaten'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            CustomIcons.food,
                            color: Colors.blue[400],
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          RichText(
                            text: const TextSpan(
                                text: '1127 ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: 'kcal',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ]),
                          ),
                        ]),
                    Text('Burned'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CustomIcons.fire_101001, color: Colors.red),
                        RichText(
                          text: const TextSpan(
                            text: '102 ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: 'kcal',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // RadialAxis(
                //   // ignore: prefer_const_literals_to_create_immutables
                //   pointers: [
                //     const RangePointer(
                //         value: 0.1,
                //         gradient: const SweepGradient(colors: <Color>[
                //           Color(0xFF00a9b5),
                //           Color(0xFFa4edeb)
                //         ], stops: <double>[
                //           0.25,
                //           0.75
                //         ])),
                //     // sizeUnit: ,

                //     // ignore: prefer_const_constructors
                //     MarkerPointer(
                //       value: 0.1,
                //       markerType: MarkerType.circle,
                //       color: Colors.white,
                //     ),
                //   ],
                // ),
                Spacer(),
                CircularPercentIndicator(
                  radius: 40,
                  percent: 0.4,
                  lineWidth: 7,
                  center: RichText(
                    text: const TextSpan(
                        text: '1503',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '\nkcal left',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          )
                        ]),
                  ),
                  progressColor: Colors.blue,
                  backgroundColor: Colors.grey.shade200,
                ),
                // const CircularProgressIndicator(
                //   value: 0.4,
                //   color: Colors.blue,
                //   backgroundColor: Colors.grey,
                // ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Carbs',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    LinearPercentIndicator(
                      percent: 0.7,
                      width: width * 0.2,
                      lineHeight: 3.0,
                      // linearGradient: LinearGradient(colors: [
                      //   Color(value)
                      // ]),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey.shade200,
                      progressColor: Colors.blueAccent,
                    ),
                    const Text(
                      '12g left',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Protein',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    LinearPercentIndicator(
                      percent: 0.7,
                      width: width * 0.2,
                      lineHeight: 3.0,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey.shade200,
                      progressColor: Colors.pinkAccent,
                    ),
                    const Text(
                      '30g left',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Fat',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    LinearPercentIndicator(
                      percent: 0.7,
                      width: width * 0.2,
                      lineHeight: 3.0,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey.shade200,
                      progressColor: Colors.orangeAccent,
                    ),
                    const Text(
                      '10g left',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
