import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:whatsapp_clone/whatsapphome.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationID = '';
  // bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    // bool otpVisibility = false;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white30, borderRadius: BorderRadius.circular(22)),
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('+91'),
                    ),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                    // onPrimary: Theme.of(context).primaryColor,
                  ),
                  onPressed: loginWithPhone
                  // isLogin = true;
                  ,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                TextField(
                  controller: otpController,
                  decoration: InputDecoration(
                    hintText: 'OTP',
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(''),
                    ),
                  ),
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                ),
                // Visibility(
                //   child: TextField(
                //     controller: otpController,
                //     decoration: InputDecoration(
                //       hintText: 'OTP',
                //       prefix: Padding(
                //         padding: EdgeInsets.all(4),
                //         child: Text(''),
                //       ),
                //     ),
                //     maxLength: 6,
                //     keyboardType: TextInputType.number,
                //   ),
                //   visible: otpVisibility,
                // ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                  ),
                  onPressed: verifyOTP,
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginWithPhone() {
    auth.verifyPhoneNumber(
        phoneNumber: '+91' + phoneController.text,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth
              .signInWithCredential(credential)
              .then((value) => print('You are logged in successfully'));
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verificationId, int? resendToken) {
          verificationID = verificationId;
          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        print('You are logged in successfully');
        Fluttertoast.showToast(
            msg: 'You are logged in successfully',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Theme.of(context).accentColor,
            textColor: Colors.white,
            fontSize: 16.0);
      },
    ).whenComplete(
      () => Navigator.pushReplacementNamed(context, WhatsAppHome.routeName),
    );
  }
}
