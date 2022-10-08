import 'package:flutter/material.dart';
import 'constants.dart';

class GolButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData iconData;
  final String title;

  GolButton({@required this.iconData, @required this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kFillColor,
      shape: CircleBorder(),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 48,
        height: 48,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: kFontColor,
          ),
          // Text(
          //   title
          // ),
        ],
      ),
      onPressed: onTap,
    );
  }
}