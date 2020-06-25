import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPress;
  BottomButton({@required this.buttonTitle,@required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kbottomContainerHeight,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      color: kbottomContainerColor,
      child: FlatButton(
          onPressed: onPress,
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}