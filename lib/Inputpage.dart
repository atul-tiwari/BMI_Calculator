import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/ResusanleCards.dart';
import 'package:bmi_calculator/CardData.dart';

const double buttomBarHeight = 70;
const Color activeCardColor = Color(0xFF1D1E33);

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
        body:Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child:ReusableCard(
                    cl: activeCardColor,
                    cardchild: GenderCardWidget(icon: FontAwesomeIcons.male,text: 'MALE',),
                  ),),
                  Expanded(child:ReusableCard(
                    cl: activeCardColor,
                    cardchild: GenderCardWidget(icon: FontAwesomeIcons.female, text: "FEMALE"),
                  ),),
                ],),
            ),
            Expanded(child:ReusableCard(cl: activeCardColor,),),
            Expanded(
              child: Row(
                children: [
                  Expanded(child:ReusableCard(cl: activeCardColor,),),
                  Expanded(child:ReusableCard(cl: activeCardColor,),),
                ],),
            ),
            Container(
              color: Color(0xFFeB1555),
              margin: EdgeInsets.only(top:10),
              width: double.infinity,
              height: buttomBarHeight,
            ),
          ],),
    );
  } 
}

