import 'package:flutter/material.dart';
import 'package:fulfit_ui/constants.dart';
import 'package:fulfit_ui/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            levelButton(context, inactiveColor, 'Beginner'),
            SizedBox(height: 8),
            levelButton(context, activeColor, 'Intermediate'),
            SizedBox(height: 8),
            levelButton(context, inactiveColor, 'Expert'),
            SizedBox(height: 70),
            RaisedButton(
              onPressed: (null)
              // Navigator.pushNamed(context, '/pagetwo');
              ,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 35),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Save',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
