import 'file:///D:/apps/bmi-calculator-flutter/lib/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: resultTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiResult,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(resultText, textAlign: TextAlign.center),
                  Text(interpretation, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
