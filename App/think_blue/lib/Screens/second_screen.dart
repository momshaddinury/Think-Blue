//

//
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page/Components/constants.dart';

import '../Components/sign_in_button.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kAccentColor, //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: kAccentColor,
      ),
      body: SecondPageUI(),
    );
  }
}

//UI Design of the page:
class SecondPageUI extends StatefulWidget {
  @override
  _SecondPageUIState createState() => _SecondPageUIState();
}

class _SecondPageUIState extends State<SecondPageUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 5.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: "Join THINK Blue",
                    style: kTitleTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "\nJoin our growing community to keep you updated and motivated",
                          style: kSubTitleTextStyle),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SignInButton(
                  colour: Colors.blue.shade900,
                  buttonText: "Continue with facebook",
                ),
                SignInButton(
                  colour: Colors.blueAccent,
                  buttonText: "Continue with Google",
                ),
                SignInButton(
                  colour: Colors.green,
                  buttonText: "Sign up with EMAIL",
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    "By joining, you agree to our Terms of Service,",
                    style: kSubTitleTextStyle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
