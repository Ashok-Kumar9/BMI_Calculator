import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    String result;
    if (_bmi <= 16) {
      result = 'Severe Thinness';
    } else if (_bmi > 16 && _bmi <= 17) {
      result = 'Moderate Thinness';
    } else if (_bmi > 17 && _bmi < 18.5) {
      result = 'Mild Thinness';
    } else if (_bmi >= 18.5 && _bmi <= 25) {
      result = 'Normal';
    } else if (_bmi > 25 && _bmi <= 30) {
      result = 'Overweight';
    } else {
      result = 'Obese';
    }

    return result;
  }

  String getInterpretation() {
    if (_bmi > 25 && _bmi < 30) {
      return 'You have a higher body weight than normal. Try to exercise more.';
    } else if (_bmi < 18.5) {
      return 'You have a lower body weight than normal. You can eat a bit more.';
    } else if (_bmi >= 18.5 && _bmi <= 25) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You are Obses. Do exercise regularly and have a diet plan.';
    }
  }
}
