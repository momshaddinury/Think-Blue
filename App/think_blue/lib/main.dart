import 'welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BaseFunction());

class BaseFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THINK blue',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: WelcomeScreen(),
      ),
    );
  }
}


