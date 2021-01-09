import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        Text(text,style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98)),)
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color cl;
  final Widget cardchild;
  const ReusableCard({
    Key key, @required this.cl,this.cardchild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: cl,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
