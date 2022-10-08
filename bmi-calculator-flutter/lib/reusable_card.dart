import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget cardChild;

  ReusableCard({@required this.backgroundColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15),
      child: cardChild,
    );
  }
}
