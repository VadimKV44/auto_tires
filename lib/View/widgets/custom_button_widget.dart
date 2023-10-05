import 'package:auto_tires/View/consts/colors.dart';
import 'package:auto_tires/View/consts/styles.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.onTap,
    required this.buttonText,
    this.buttonColor = MainColors.kMainRedColor,
    this.buttonTextStyle,
    this.buttonWidth,
  });

  final Color buttonColor;
  final void Function() onTap;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(100.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: buttonTextStyle ?? MainStyles.kWhiteColorW500(14),
            ),
          ),
        ),
      ),
    );
  }
}
