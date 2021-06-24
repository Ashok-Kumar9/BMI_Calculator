import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({this.bmi, this.result, this.interpretation});

  final String bmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'YOUR RESULT',
              style: kTitleTextStyle,
              textAlign: TextAlign.left,
            ),
          ),
          ReusableCard(
            colour: kActiveCardColor,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  result,
                  style: kResultTextStyle,
                ),
                Text(
                  bmi,
                  style: kResultNumStyle,
                ),
                Text(
                  interpretation,
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
          )
        ],
      ),
    );
  }
}
