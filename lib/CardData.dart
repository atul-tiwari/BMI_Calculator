import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';


class GenderCardWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const GenderCardWidget({
    Key key,@required this.icon, @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80,color: Colors.white,),
        SizedBox(height: 15.0,),
        Text(text,style: klabelTextStyle),
      ],
    );
  }
}

