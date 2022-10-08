import 'dart:math';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({@required this.height, @required this.weight});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Text getResult() {
    if (_bmi >= 25) {
      return Text(
        'Overweight',
        style: kHighTextStyle,
      );
    } else if (_bmi > 18.5) {
      return Text(
        'Normal',
        style: kNormalTextStyle,
      );
    } else {
      return Text(
        'Underweight',
        style: kUnderTextStyle,
      );
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight, try exercising more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight, continue maintaining the healthy lifestyle.';
    } else {
      return 'You have less than normal body weight, try eating more.';
    }
  }
}