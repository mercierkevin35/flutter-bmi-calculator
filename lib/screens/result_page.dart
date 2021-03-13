import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;
  final Color textColor;

  ResultPage(
      {@required this.bmi,
      @required this.result,
      @required this.interpretation,
      @required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kResultPageTitleStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kInactiveCardColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      this.result.toUpperCase(),
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: this.textColor),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      this.bmi,
                      style: kBMITextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      this.interpretation,
                      style: kIntepretationTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              title: "Recalculate",
            ),
          ),
        ],
      ),
    );
  }
}
