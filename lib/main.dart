
import 'package:flutter/material.dart';
import 'bmi-result-screen.dart';
import 'bmi-screen.dart';
void main() {
  runApp(BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen() ,
    );
  }
}
