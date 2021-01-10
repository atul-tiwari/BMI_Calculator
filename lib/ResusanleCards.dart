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

class CustomRoundButton extends StatelessWidget {

  final IconData iconData;
  final Function onPressed;

  const CustomRoundButton({
    Key key ,@required this.iconData,this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(width: 50,height: 50),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        child: Icon(iconData , color: Colors.white,),
        onPressed: this.onPressed,

      ),
    );
  }
}
class ResButton extends StatelessWidget {

  final String text;
  final Function onTap;
  const ResButton({
    Key key,@required this.text,@required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kacentcolor,
        margin: EdgeInsets.only(top:10),
        width: double.infinity,
        height: kbuttomBarHeight,
        child: Text(text , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w600)),
      ),
    );
  }
}


