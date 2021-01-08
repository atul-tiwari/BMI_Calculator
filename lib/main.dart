import 'package:flutter/material.dart';
import 'package:bmi_calculator/Inputpage.dart ';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0XFF2D3142),
        scaffoldBackgroundColor: Color(0XFF2D3142),
        accentColor: Color(0XFFEF8354),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        )
    ),
      home: InputPage(),
    );
  }
}

