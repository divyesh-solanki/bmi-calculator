import 'package:bmi_calculator/components/bottom_button.dart';

import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.resultText,this.bmi,this.bmiInterpretation});
  final String resultText;
  final String bmi;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        resultText,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      bmi,
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      bmiInterpretation,
                      style: TextStyle(
                        fontSize: 30,
                        
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE - CALCULATE',onPress: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
