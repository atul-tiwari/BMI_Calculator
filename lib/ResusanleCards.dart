import 'package:flutter/material.dart';

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
