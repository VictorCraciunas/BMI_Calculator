import 'package:flutter/material.dart';
import '../my_constants.dart';

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    super.key,
    required this.myText,
    required this.onTapFunction
  });

  final String myText;
  final void Function() onTapFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTapFunction,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 8.0,
        ),
        height: kBottomContainerHeight,
        child:  Center(
          child: Text(
            myText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}