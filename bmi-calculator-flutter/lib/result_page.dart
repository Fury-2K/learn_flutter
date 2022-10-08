import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'BottomButton.dart';

class ResultPage extends StatefulWidget {
  final String bmi;
  final Text result;
  final String interpretation;
  ResultPage({ @required this.bmi, @required this.result, @required this.interpretation});

  @override
  _ResultPageState createState() => _ResultPageState(bmi: bmi, result: result, interpretation: interpretation);
}

class _ResultPageState extends State<ResultPage> {
  final String bmi;
  final Text result;
  final String interpretation;
  _ResultPageState({ @required this.bmi, @required this.result, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              'YOUR RESULT-',
              style: kExtraLargeTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              backgroundColor: kSelectedColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  result,
                  Text(
                    bmi,
                    style: kNumberStyle,
                  ),
                  Text(
                    interpretation,
                    style: kTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}