import 'package:flutter/material.dart';
import '../constants.dart';
class GenderCardContent extends StatelessWidget {
  final String genderName;
  final IconData genderIcon;
  GenderCardContent({this.genderIcon, this.genderName});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 70,
          //color: Color(0xFF8E8E9C),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          genderName,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}