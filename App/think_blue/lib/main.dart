
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page/views/bottom_nav_bar/bottom_navigation_bar.dart';
import 'package:landing_page/views/dashboard_screen.dart';

import 'utils/constants.dart';
import 'views/splash_screen.dart';

void main() => runApp(BaseFunction());

class BaseFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kAccentColor, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THINK blue',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: BottomNavigationScreen(),
      ),
    );
  }
}
