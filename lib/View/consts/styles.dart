import 'package:auto_tires/View/consts/colors.dart';
import 'package:flutter/material.dart';

class MainStyles {
  ///   FontWeight W400
  static TextStyle kBlackColorW400(double fontSize, [TextDecoration? textDecoration]) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
      color: MainColors.kBlackColor,
      decoration: textDecoration,
    );
  }

  ///   FontWeight W500
  static TextStyle kWhiteColorW500(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      color: MainColors.kWhiteColor,
    );
  }

  static TextStyle kGreyColorW500(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      color: MainColors.kGreyColor,
    );
  }

  static TextStyle kMainRedColorW500(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      color: MainColors.kMainRedColor,
    );
  }
}