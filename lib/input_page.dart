import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_card_content.dart';

const bottomContainerHeight = 60.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  // 1 = male, 2 = female
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        if (maleCardColor == activeCardColor) {
          maleCardColor = inactiveCardColor;
        }
      }
    } else {
      if (gender == 2) {
        if (femaleCardColor == inactiveCardColor) {
          femaleCardColor = activeCardColor;
          maleCardColor = inactiveCardColor;
        } else {
          femaleCardColor = inactiveCardColor;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('male button is pressed');
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: GenderCardContent(
                        genderName: 'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('female button pressed');
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: GenderCardContent(
                        genderName: 'FEMALE',
                        genderIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}