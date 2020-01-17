import 'package:flutter/material.dart';

void main() => runApp(BaseFunction());

class BaseFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: BodyFunction(),
      ),
    );
  }
}

class BodyFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            //Center Image
            padding: EdgeInsets.only(top: 100.0, bottom: 50),
            child: Image.asset(
              'images/waterhd.png',
              scale: 0.8,
            ),
          ),
          Column(
            //App Name Holder
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Text(
                  "THINK",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 65,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "blue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 65,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            width: 420,
            color: Colors.white,
            height: 103,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 260.0,
                  height: 55.0,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue.shade900),
                    ),
                    onPressed: () {},
                    splashColor: Colors.blueAccent,
                    color: Colors.blue.shade900,
                    textColor: Colors.white,
                    child: Text("Start now".toUpperCase(),
                        style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
