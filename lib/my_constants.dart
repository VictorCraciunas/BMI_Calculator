/// good practice to use constants because you make the changes only in one place and it reflects on the whole app
import 'package:flutter/material.dart';

const kBottomContainerHeight = 50.0;
const kBottomContainerColor = Color(0xFFEB1555);

const kActiveCardColor = Color(0xFF1B1C2C);
const kInactiveCardColor = Color(0xFF111328);

const kSizedBoxedHeight = 15.0;

const kCardFontSize = 18.0;
const kIconSize = 70.0;
const kLabelTextStyle=  TextStyle(
  fontSize: kCardFontSize,
  color: Color(0xFF8D8E98));
const kNumberTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.w900);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);
const kResultTextStyle = TextStyle(
  color: Color(0xFF24d876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold
);
const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold
);

const kInterpretationTextSyle = TextStyle(
  fontSize: 22.0,
);