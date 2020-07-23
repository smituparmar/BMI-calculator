import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;

  const BottomButton({@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            'Calculate',
            style: largeButtonTextStyle,
          ),
        ),
        color: bottomCardColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kbottonContainerheight,
      ),
    );
  }
}
