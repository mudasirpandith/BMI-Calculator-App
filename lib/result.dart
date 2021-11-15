import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusablleCard.dart';

class Result extends StatelessWidget {
  Result({required this.bmiResult, required this.resultText, required this.suggestion});
  final String bmiResult;
  final String resultText;
  final String suggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment:Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),

              ),
            ),
            Expanded(
              flex: 5,
              child: reusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultTextColor,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiTextStyle,
                    ),

                    Text(
                      suggestion,
                       textAlign: TextAlign.center,
                      style:kBodyTextStyle,
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
