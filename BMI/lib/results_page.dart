import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "Your Result",
              style: kLargeTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTitleStyle,
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
