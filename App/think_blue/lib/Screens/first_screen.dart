import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page/Components/constants.dart';
import 'second_screen.dart';
import '../Components/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kAccentColor, //or set color with: Color(0xFF0000FF)
    ));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 7,
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/waterhd.png'),
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    text: 'THINK',
                    style: kAppNameTextStyle.copyWith(color: kPrimaryColor),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nblue',
                        style: kAppNameTextStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: RaisedButton(
                elevation: 2,
                splashColor: Colors.blueAccent,
                color: kButtonBGColor,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                child: Text("START NOW",
                    style: kButtonTextStyle.copyWith(
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
