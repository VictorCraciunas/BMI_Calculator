import 'package:flutter/material.dart';
import '../my_constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.cardText,
    required this.icon
  });

  final String cardText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        const SizedBox(
          height: kSizedBoxedHeight,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}