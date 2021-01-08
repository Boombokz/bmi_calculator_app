import 'package:bmi_calculator_app/calculator_brain.dart';
import 'package:bmi_calculator_app/components/gender_title.dart';
import 'package:bmi_calculator_app/components/icon_gender.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:bmi_calculator_app/components/round_button.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  int height = 175;
  int weight = 50;
  int ageValue = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 4,
                          child: ReusableCard(
                            onPress: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            },
                            color: selectedGender == Gender.male
                                ? kActiveCardColour
                                : Colors.white,
                            cardChild: IconGender(
                              icon: FontAwesomeIcons.mars,
                              color: selectedGender == Gender.male
                                  ? Color(0xFFEF8182)
                                  : kRoundButtonColour,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: GenderTitle(
                              title: 'Male',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 4,
                          child: ReusableCard(
                            onPress: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            color: selectedGender == Gender.female
                                ? kActiveCardColour
                                : Colors.white,
                            cardChild: IconGender(
                              icon: FontAwesomeIcons.venus,
                              color: selectedGender == Gender.female
                                  ? Color(0xFFEF8182)
                                  : kRoundButtonColour,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: GenderTitle(
                              title: 'Female',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kRoundButtonColour,
                        inactiveTrackColor: Colors.white,
                        trackShape: RoundedRectSliderTrackShape(),
                        trackHeight: 10,
                        thumbColor: Color(0xFFEF8182),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayColor: Colors.red.withAlpha(32),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 23.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(fontSize: 30),
                          ),
                          NumberPicker.horizontal(
                              textStyle: TextStyle(
                                fontSize: 22,
                                color: Colors.grey[600],
                              ),
                              selectedTextStyle: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              initialValue: weight,
                              minValue: 30,
                              maxValue: 150,
                              onChanged: (newValue) {
                                setState(() {
                                  weight = newValue;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(fontSize: 30),
                          ),
                          NumberPicker.horizontal(
                              textStyle: TextStyle(
                                fontSize: 22,
                                color: Colors.grey[600],
                              ),
                              selectedTextStyle: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              initialValue: ageValue,
                              minValue: 12,
                              maxValue: 90,
                              onChanged: (newValue) {
                                setState(() {
                                  ageValue = newValue;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 25),
              child: RoundButton(
                  title: 'Calculate',
                  onPressed: () {
                    CalculatorBrain calc =
                        CalculatorBrain(height: height, weight: weight);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  bmiResult: calc.calculateBMI(),
                                  resultText: calc.getResult(),
                                )));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
