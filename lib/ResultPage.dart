import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Expanded(
          child: Container(
            child: Text('Your Result'),
          ),
        )
      ],)

    );
  }
}
