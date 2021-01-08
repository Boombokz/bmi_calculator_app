import 'package:bmi_calculator_app/components/round_button.dart';
import 'package:bmi_calculator_app/screens/input_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 150, left: 10, right: 10, bottom: 20),
          child: Column(
            children: [
              Text(
                'CALCO',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                'SMART BMI CALCULATOR',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              RoundButton(
                title: 'Get Started',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
              ),
              SizedBox(height: 50),
              Image(
                image: AssetImage('assets/images/diagram.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
