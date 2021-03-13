import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({@required this.height, @required this.weight}) {
    this._bmi = this._bmi = this.weight / pow(this.height / 100, 2);
  }

  String getBMI() {
    return this._bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (this._bmi < 18.5) {
      return 'Underweight';
    } else if (this._bmi < 25) {
      return 'Normalweight';
    } else if (this._bmi < 30) {
      return 'Overweight';
    } else if (this._bmi < 35) {
      return 'Obesity class I';
    } else if (this._bmi < 40) {
      return 'Obesity class II';
    } else {
      return 'Obesity class III';
    }
  }

  String getInterpretation() {
    if (this._bmi < 18.5) {
      return 'T\'es trop maigre, va manger';
    } else if (this._bmi < 25) {
      return 'T\'es normal c\'est bien mais t\'enflammes pas';
    } else if (this._bmi < 30) {
      return 'T\'es gros(se)';
    } else if (this._bmi < 35) {
      return 'T\'es obèse c\'est chaud';
    } else if (this._bmi < 40) {
      return 'T\'es obèse mais de classe 2';
    } else {
      return 'T\'es obèse de ouf c\'est chaud va faire du sport si tu veux pas mourrir';
    }
  }

  Color getColor() {
    if (this._bmi < 18.5) {
      return Colors.orange;
    } else if (this._bmi < 25) {
      return Color(0xFF24D876);
    } else if (this._bmi < 30) {
      return Colors.orange.shade300;
    } else if (this._bmi < 35) {
      return Colors.orange;
    } else if (this._bmi < 40) {
      return Colors.orange.shade500;
    } else {
      return Colors.red;
    }
  }
}
