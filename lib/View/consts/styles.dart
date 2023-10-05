import 'package:auto_tires/View/consts/colors.dart';
import 'package:flutter/material.dart';

class MainStyles {

  ///   FontWeight W500
  static TextStyle kWhiteColorW500(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      color: MainColors.kWhiteColor,
    );
  }
}