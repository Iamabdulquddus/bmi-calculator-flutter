
import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.weight,required this.height});
  final int height;
  final int weight;
  late double _bmi;
  String calculatorBMI (){
  _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult (){
    if(_bmi >=25){
      return 'Overweight';
    }else if(_bmi>=18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation (){
    if(_bmi >=25){
      return 'Try to exercise more';
    }else if(_bmi>=18.5){
      return 'Keep up the good work';
    }else{
      return 'You should eat a bite more';
    }
  }
}