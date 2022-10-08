import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  BottomButton({@required this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kBottomContainerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10,),
          Text(
            title,
            style: kBottomButtonStyle,
          ),
          SizedBox(height: 30,),
        ],
      ),
      onPressed: onTap,
    );
  }
}