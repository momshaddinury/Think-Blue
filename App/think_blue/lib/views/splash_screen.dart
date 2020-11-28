import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page/utils/constants.dart';
import 'package:landing_page/utils/styles.dart';
import 'package:landing_page/views/dashboard_screen.dart';
import 'auth/sign_in_screen.dart';

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
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 56,
                child: RaisedButton(
                  elevation: 2,
                  splashColor: Colors.blueAccent,
                  color: AppColor.darkBlueColor,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()),
                    );
                  },
                  child: Text("START",
                      style: kButtonTextStyle.copyWith(
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
