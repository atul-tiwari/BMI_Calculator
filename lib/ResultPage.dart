import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/ResusanleCards.dart';
import 'package:bmi_calculator/ResusanleCards.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(
          child: Container(
            child: Text('Your Result',style: kTitletestStyle,),
          ),
        ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cl: kactiveCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal',style: kDiscriptionStyle,),
                  Text('18.5',style: kBMIresultstyle,),
                  Text('Your ddhdb dhjbfd fsdbbva dfdb vdsfgjkb',style: kresulttextStyle,textAlign: TextAlign.center,),
                ],
              ),),),
          Expanded(
            child: ResButton(text: "Re-CalCulate",onTap: (){
              Navigator.pop(context);
            },),
          ),

      ],)

    );
  }
}
