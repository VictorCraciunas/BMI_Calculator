import 'package:flutter/material.dart';

/// this widget is a custom button made similar how floating button is made
class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key,required this.iconData, required this.buttonFunction});

  final IconData iconData;
  final void Function() buttonFunction;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttonFunction,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor( /// size of the button
        width: 56.0,
        height: 56.0,
      ),
      fillColor: const Color(0xFF434453),
      elevation: 4.0,
      child: Icon(iconData),
    );
  }
}
