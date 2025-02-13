import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colour, this.cardChild, this.onTapFunction});

  final Color colour;
  final Widget? cardChild; /// here we declare a variable which keeps an widget
  final void Function()? onTapFunction; /// here we declare a variable which keeps a function of type void

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTapFunction, /// here we reference it
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}