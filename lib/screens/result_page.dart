import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:bmi_calculator_app/components/round_button.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText});

  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
        leading: IconButton(
          color: kRoundButtonColour,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 100, left: 10, right: 10, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$bmiResult',
                    style: TextStyle(
                        fontSize: 140,
                        color: kActiveCardColour,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$resultText',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
              ReusableCard(
                color: kActiveCardColour,
                cardChild: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'Information',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 15,
                            width: 70,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 15,
                            width: 120,
                            color: Colors.green,
                          ),
                          Container(
                            height: 15,
                            width: 70,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '15',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            '18',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            '25',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            '30',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Thin',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Normal',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            'Obese',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RoundButton(
                title: 'Re-Calculate',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
