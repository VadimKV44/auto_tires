import 'package:auto_tires/View/consts/colors.dart';
import 'package:auto_tires/View/consts/strings.dart';
import 'package:auto_tires/View/consts/styles.dart';
import 'package:auto_tires/View/widgets/acceptance_of_terms_widget.dart';
import 'package:auto_tires/View/widgets/custom_button_widget.dart';
import 'package:auto_tires/View/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _smsController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneController.dispose();
    _smsController.dispose();
  }

  bool iconButtonActive = false;

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
                Strings.registeringNewAccount,
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
            const SizedBox(height: 40.0),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75.0),
                  child: CustomButtonWidget(
                    onTap: () {},
                    buttonText: Strings.sendSMSCode,
                    buttonWidth: double.infinity,
                  ),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75.0),
                  child: CustomButtonWidget(
                    onTap: () {},
                    buttonText: Strings.resend,
                    buttonWidth: double.infinity,
                    buttonColor: Colors.transparent,
                    buttonTextStyle: MainStyles.kMainRedColorW500(14.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: AcceptanceOfTermsWidget(
                iconButtonActive: iconButtonActive,
                onTap: () {
                  setState(() {
                    iconButtonActive = !iconButtonActive;
                  });
                },
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: CustomTextFieldWidget(
                controller: _smsController,
                labelText: Strings.codeFromSMS,
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: CustomButtonWidget(
                onTap: () {},
                buttonText: Strings.further,
                buttonWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
