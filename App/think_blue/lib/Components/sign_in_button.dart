import 'package:flutter/material.dart';
import 'package:landing_page/Components/constants.dart';

class SignInButton extends StatelessWidget {
  SignInButton({@required this.colour, @required this.buttonText});

  final colour;
  final buttonText;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 10.0,
      padding: EdgeInsets.all(10.0),
      onPressed: () {},
      color: colour,
      child: Text(buttonText.toUpperCase(), style: kLoginWithButtonTextStyle),
    );
  }
}
