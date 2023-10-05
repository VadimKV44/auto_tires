import 'package:auto_tires/View/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.onTap,
    required this.active,
  });

  final void Function() onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.0,
      width: 18.0,
      decoration: BoxDecoration(
        color: active ? MainColors.kMainRedColor : Colors.transparent,
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(
          width: active ? 0.0 : 2.0,
          color: active ? Colors.transparent : MainColors.kGreyColor,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(3.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.5),
            child: SvgPicture.asset('assets/icons/check.svg'),
          ),
        ),
      ),
    );
  }
}
