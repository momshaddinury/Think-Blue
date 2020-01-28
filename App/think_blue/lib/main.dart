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
            flex: 4,
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
                children: <Widget>[
                  Expanded(
                      child: Container(
                        //Center Image
                        child: Image.asset('images/waterhd.png'),
                      )),
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
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
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
