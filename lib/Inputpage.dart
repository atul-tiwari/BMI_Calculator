import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/ResusanleCards.dart';
import 'package:bmi_calculator/CardData.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/ResultPage.dart';

enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {



  Color maleCardColor = kinActiveCardColor;
  Color femaleCardColor = kinActiveCardColor;
  Gender selectedGender ;

  int height = 180;
  int weight = 60;
  int age = 18;

   void changeGender(Gender gen){

     maleCardColor = (gen == Gender.male)? kactiveCardColor : kinActiveCardColor;
     femaleCardColor = (gen == Gender.female)? kactiveCardColor : kinActiveCardColor;

     selectedGender = gen;
   }

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
                    cl: maleCardColor,
                    cardchild: GenderCardWidget(icon: FontAwesomeIcons.male,text: 'MALE',),
                    Instruction: (){
                      setState(() {
                        changeGender(Gender.male);
                      });},
                  ),),
                  Expanded(child:ReusableCard(
                    cl: femaleCardColor,
                    cardchild: GenderCardWidget(icon: FontAwesomeIcons.female, text: "FEMALE"),
                    Instruction: (){
                      setState(() {
                        changeGender(Gender.female);
                      });},
                  ),),
                ],),
            ),
            Expanded(child:ReusableCard(
              cl: kactiveCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height',style: klabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(height.toString(),style: knumberTextStyle,),
                      SizedBox(width: 10.0,),
                      Text('cm', style: klabelTextStyle,),
                    ],),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 1.0,
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kfontcolor,
                      thumbColor: kacentcolor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: kacentcolor.withAlpha(100),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.toInt();
                        });},),
                  ),
                ],
              ),
            ),),
            Expanded(
              child: Row(
                children: [
                  Expanded(child:ReusableCard(
                    cl: kactiveCardColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',style: klabelTextStyle,),
                        Text(weight.toString(), style: knumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          CustomRoundButton(iconData: FontAwesomeIcons.minus ,
                          onPressed: (){
                            setState(() {
                              weight--;});},),
                          CustomRoundButton(iconData: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              weight++;
                            });},),],)
                      ],),
                  ),),
                  Expanded(child:ReusableCard(
                    cl: kactiveCardColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: klabelTextStyle,),
                        Text(age.toString(), style: knumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRoundButton(iconData: FontAwesomeIcons.minus ,
                              onPressed: (){
                                setState(() {
                                  age--;});},),
                            CustomRoundButton(iconData: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });},),],)
                      ],),
                  ),),
                ],),
            ),
            ResButton(text: 'CALCULATE',onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage() ,), );
            },),
          ],),
    );
  } 
}

