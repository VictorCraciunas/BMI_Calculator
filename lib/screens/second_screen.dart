import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/my_constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/navigator_button.dart';
import 'package:bmi_calculator/bmi_data.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen(
      {super.key,});



  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BMIData; /// get the shared parameters from the other screen
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your response',
                style: kTitleTextStyle,
              ),
            ),
          ),
           Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    args.resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.interpretation,
                    style: kInterpretationTextSyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          NavigatorButton(
              myText: 'Recalculate BMI',
              onTapFunction: () {
                Navigator.pushNamed(context, '/');
              })
        ],
      ),
    );
  }
}
