import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
class ReusableCard extends StatelessWidget {
  final Color cl;
  final Widget cardchild;
  final Function Instruction;
  const ReusableCard({
    Key key, @required this.cl,this.cardchild,this.Instruction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.Instruction,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: cl,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
