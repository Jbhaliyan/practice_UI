import 'package:flutter/material.dart';
import 'package:fulfit_ui/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

enum Gender {
  male,
  female,
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  late Gender selectedGender;

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },

                  color: inactiveColor,
                  // selectedGender == Gender.female ? activeColor : inactiveColor,
                  child: Text(
                    'Female',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: activeColor,
                  // selectedGender == Gender.male ? activeColor : inactiveColor,
                  child: Text(
                    'male',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            inputField(context, 'year...'),
            SizedBox(
              height: 10,
            ),
            inputField(context, 'feet...'),
            SizedBox(
              height: 10,
            ),
            inputField(context, 'lbs...'),
            //
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profiletwo');
              },
              child: Text(
                'Continue',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                //  Container(
                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 35),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Text(
                //     'Continue',
                //     style: GoogleFonts.openSans(
                //       textStyle: TextStyle(
                //         fontSize: 18,
                //         color: Colors.black,
                //       ),
                //     ),
                //   ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
