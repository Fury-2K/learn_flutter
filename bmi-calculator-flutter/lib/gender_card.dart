import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  final String title;
  final IconData image;
  final Color backgroundColor;
  final Function ontap;
  final Color iconColor;

  GenderCard(
      {@required this.title,
        @required this.image,
        @required this.backgroundColor,
      this.ontap, @required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ReusableCard(
        backgroundColor: backgroundColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              image,
              size: 90,
              color: iconColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                color: kFontColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      onTap: ontap,
    );
  }
}
