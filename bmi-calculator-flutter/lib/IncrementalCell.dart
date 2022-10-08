import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'GolButton.dart';
import 'constants.dart';

class IncrementalCell extends StatelessWidget {
  final String title;
  final String unit;
  int value;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  IncrementalCell({ @required this.title, @required this.unit, @required this.value, @required this.onIncrease, @required this.onDecrease });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              value.toString(),
              style: kNumberStyle,
            ),
            Text(
              unit,
              style: kTextStyle,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GolButton(
              iconData: FontAwesomeIcons.minus,
              onTap: onDecrease,
            ),
            SizedBox(width: 24),
            GolButton(
              iconData: FontAwesomeIcons.plus,
              onTap: onIncrease,
            ),
          ],
        ),
      ],
    );
  }
}