import 'dart:math';
class BMIBrain{
  BMIBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi = weight / pow( height / 100 , 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    } else if(_bmi>18.5){
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'Your weight is more than normal, Try exercising more.';
    } else if(_bmi>18.5){
      return 'Your body weight is normal. Good job!';
    }else{
      return 'Your body weight is lower than normal, You can eat more.';
    }
  }
}