import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(

        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(color: Color(0XFF4F5D75),borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
