import 'package:auto_tires/View/consts/colors.dart';
import 'package:auto_tires/View/consts/strings.dart';
import 'package:auto_tires/View/consts/styles.dart';
import 'package:auto_tires/View/widgets/custom_button_widget.dart';
import 'package:auto_tires/View/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: MainColors.kWhiteColor,
        body: ListView(
          children: [
            const SizedBox(height: 60.0),
            Align(
              alignment: Alignment.center,
              child: Text(
                Strings.logInToYourAccount,
                style: MainStyles.kBlackColorW400(18.0),
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: CustomTextFieldWidget(
                controller: _phoneController,
                labelText: Strings.phoneNumber,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '+# (###) ### ## ##',
                    type: MaskAutoCompletionType.lazy,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: CustomTextFieldWidget(
                controller: _passController,
                labelText: Strings.pass,
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: CustomButtonWidget(
                onTap: () {},
                buttonText: Strings.goIn,
                buttonWidth: double.infinity,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: CustomButtonWidget(
                onTap: () {},
                buttonText: Strings.forgotYourPassword,
                buttonWidth: double.infinity,
                buttonColor: Colors.transparent,
                buttonTextStyle: MainStyles.kMainRedColorW500(14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
