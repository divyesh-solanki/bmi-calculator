import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon,@required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 10.0,
      //padding: EdgeInsets.all(5),
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      child: Icon(icon),
      onPressed: onPress,
    );
  }
}