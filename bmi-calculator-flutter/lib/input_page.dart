import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_card.dart';
import 'constants.dart';
import 'GolButton.dart';
import 'IncrementalCell.dart';
import 'result_page.dart';
import 'package:bmi_calculator/BottomButton.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum GenderType {
  male,
  female
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kUnselectedColor;
  Color femaleCardColor = kUnselectedColor;

  void selectGender(GenderType type) {
    switch(type) {
      case GenderType.male: {
        maleCardColor = maleCardColor == kUnselectedColor ? kSelectedColor : kUnselectedColor;
        femaleCardColor = kUnselectedColor;
        break;
      }
      case GenderType.female: {
        femaleCardColor = femaleCardColor == kUnselectedColor ? kSelectedColor : kUnselectedColor;
        maleCardColor = kUnselectedColor;
        break;
      }
    }
  }

  int userHeight = 100;
  int userWeight = 64;
  int userAge = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderCard(
                    title: 'MALE',
                    image: FontAwesomeIcons.mars,
                    backgroundColor: maleCardColor,
                    iconColor: maleCardColor == kSelectedColor ? Colors.white : kFontColor,
                    ontap: () {
                      setState(() {
                        selectGender(GenderType.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    title: 'FEMALE',
                    image: FontAwesomeIcons.venus,
                    backgroundColor: femaleCardColor,
                    iconColor: femaleCardColor == kSelectedColor ? Colors.white : kFontColor,
                    ontap: () {
                      setState(() {
                        selectGender(GenderType.female);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    backgroundColor: kUnselectedColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: kTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              userHeight.toString(),
                              style: kNumberStyle,
                            ),
                            Text(
                              "cm",
                              style: kTextStyle,
                            ),
                          ],

                        ),
                        Slider(
                          value: userHeight.toDouble(),
                          min: 100.0,
                          max: 200.0,
                          // divisions: 100,
                          activeColor: kBottomContainerColor,
                          inactiveColor: kFontColor,
                          onChanged: (double newValue) {
                            setState(() {
                              userHeight = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    backgroundColor: kUnselectedColor,
                    cardChild: IncrementalCell(
                      title: 'WEIGHT',
                      unit: 'Kg',
                      value: userWeight,
                      onIncrease: () {
                        setState(() {
                          userWeight++;
                        });
                      },
                      onDecrease: () {
                        setState(() {
                          userWeight--;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: kUnselectedColor,
                    cardChild: IncrementalCell(
                      title: 'AGE',
                      unit: '',
                      value: userAge,
                      onIncrease: () {
                        setState(() {
                          userAge++;
                        });
                      },
                      onDecrease: () {
                        setState(() {
                          userAge--;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: "CALCULATE",
            onTap: () {
              CalculatorBrain calculator = CalculatorBrain(height: userHeight, weight: userWeight);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(bmi: calculator.calculateBMI(), result: calculator.getResult(), interpretation: calculator.getInterpretation(),);
              }));
            },
          ),
        ],
      ),
    );
  }
}