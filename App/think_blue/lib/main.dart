import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(BaseFunction());

class BaseFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      home: Scaffold(
        backgroundColor: Colors.white,
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
          Expanded(
            flex:5,
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/waterhd.png'),
                  Column(
                    //App Name Holder
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Text("THINK",
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Roboto',
                                letterSpacing: 0.5,
                                fontSize: 65)),
                      ),
                      Container(
                        child: Text("blue",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Roboto',
                                letterSpacing: 0.5,
                                fontSize: 65)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: RaisedButton(
                elevation: 7,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.blue.shade900),
                ),
                onPressed: () {},
                splashColor: Colors.blueAccent,
                color: Colors.blue.shade900,
                child: Text("Start now".toUpperCase(),
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
