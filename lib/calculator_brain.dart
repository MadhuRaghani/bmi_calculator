import 'package:flutter/material.dart';
import 'dart:math';
class CalculatorBrain{

  CalculatorBrain({@required this.height, @required this.weight});

//  final int height,weight;

  int height=1;
  int weight=1;
  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi.toDouble() > 25.5)
      return 'OVERWEIGHT';
    if(_bmi.toDouble() > 18.5)
      return 'NORMAL';
    return 'UNDERWEIGHT';
  }

  String getInterpretation(){
    if(_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    if(_bmi > 18.5)
      return 'You have a normal body weight. Good Job!!';
    return 'You have a lower than normal body weight. You can eat a little bit more.';
  }
}