// ignore: camel_case_types
// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:math';

class Calculator {
  final height;
  final weight;
  double _bmi = 0;
  Calculator({this.height, this.weight});

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Getresult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "underweight";
    }
  }

  String getmessages() {
    if (_bmi >= 25) {
      return 'higher bdoy wirght';
    } else if (_bmi > 18.5) {
      return "badhiya hai ";
    } else {
      return "beta kuch khao piyo abhi ";
    }
  }
}
