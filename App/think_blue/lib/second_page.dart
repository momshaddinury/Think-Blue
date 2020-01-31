//

//
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
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

  final textCard = Container(
    //margin: new EdgeInsets.symmetric(horizontal: 25.0),
    decoration: BoxDecoration(
      color: Colors.blue.shade900,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "How much fluid does the average, healthy adult need? "
        "An adequate daily fluid intake is: "
        "\n\n1. About 15.5 cups (3.7 liters) of fluids for men "
        "\n2. About 11.5 cups (2.7 liters) of fluids a day for women",
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.justify,

        style: TextStyle(
          height: 1.5,
          fontFamily: 'Roboto',
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 16.0,
                  ),
                  child: new Stack(
                    children: <Widget>[textCard],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Text("Join Think Blue",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Text(
                "Join our growing community to keep you updated and motivated",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: Colors.black87,
                )),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: RaisedButton(
              elevation: 10.0,
              padding: EdgeInsets.all(10.0),
              onPressed: () {},
              color: Colors.blue.shade900,
              child: Text(
                "Continue with facebook".toUpperCase(),
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: RaisedButton(
              elevation: 10.0,
              padding: EdgeInsets.all(10.0),
              onPressed: () {},
              color: Colors.blueAccent,
              child: Text(
                "Continue with Google".toUpperCase(),
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: RaisedButton(
              elevation: 10.0,
              padding: EdgeInsets.all(10.0),
              onPressed: () {},
              color: Colors.green,
              child: Text(
                "Sign up with EMAIL".toUpperCase(),
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Center(
              child: Text("By joining, you agree to our Terms of Service",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    color: Colors.black87,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
