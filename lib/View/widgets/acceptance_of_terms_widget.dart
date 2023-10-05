import 'package:auto_tires/View/consts/styles.dart';
import 'package:auto_tires/View/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class AcceptanceOfTermsWidget extends StatelessWidget {
  const AcceptanceOfTermsWidget({
    super.key,
    required this.iconButtonActive,
    required this.onTap,
  });

  final bool iconButtonActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
          active: iconButtonActive,
          onTap: onTap,
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Ознакомлен с ',
                  style: MainStyles.kBlackColorW400(12.0),
                ),
                TextSpan(
                  text: 'Договором оферты ',
                  style: MainStyles.kBlackColorW400(12.0, TextDecoration.underline),
                ),
                TextSpan(
                  text: 'и согласен на ',
                  style: MainStyles.kBlackColorW400(12.0),
                ),
                TextSpan(
                  text: 'Рассылку',
                  style: MainStyles.kBlackColorW400(12.0, TextDecoration.underline),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
