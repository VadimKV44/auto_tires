import 'package:auto_tires/View/consts/colors.dart';
import 'package:auto_tires/View/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    this.textInputType = TextInputType.phone,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String labelText;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: MainColors.kBlackColor,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      style: MainStyles.kBlackColorW400(16.0),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: MainStyles.kBlackColorW400(12.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: MainColors.kBlackColor, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: MainColors.kGreyColor, width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
