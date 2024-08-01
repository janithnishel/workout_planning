import 'package:app5/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final List<Color> gradiant;
  final String buttonText;
  final double buttonTextFontSize;
  final double btnBorderRadius;

  const CustomButton(
      {super.key,
      required this.buttonWidth,
      required this.buttonHeight,
      required this.gradiant,
      required this.buttonText,
      required this.buttonTextFontSize,
      required this.btnBorderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradiant,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(btnBorderRadius),
      ),
      child: Center(
          child: Text(
        buttonText,
        style: TextStyle(
            fontSize:buttonTextFontSize,
            fontWeight: FontWeight.w400,
            color: wPrimaryWhiteColor),
      )),
    );
  }
}
