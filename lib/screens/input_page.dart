import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../my_constants.dart';
import '../components/icon_content.dart';
import '../enums/gender_enum.dart';
import '../components/rounded_button.dart';
import '../components/navigator_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/bmi_data.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /// You can do the selection part using functions
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // ///Gender is an enum
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (selectedGender == Gender.female) {
  //       if (femaleCardColor == inactiveCardColor) {
  //         femaleCardColor = activeCardColor;
  //         maleCardColor = inactiveCardColor;
  //       } else {
  //         femaleCardColor = inactiveCardColor;
  //       }
  //     }
  // }

  /// or using Ternary Operator
  Gender? selectedGender;
  int sliderValue = 158;
  int weight = 50;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTapFunction: () {
                      /// we make a lambda function which we pass as a parameter
                      setState(() {
                        // updateColor(Gender.male);
                        selectedGender = Gender.male;

                        /// this is an enum created in separated file
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,

                    /// Ternary operator
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      onTapFunction: () {
                        /// we make a lambda function which we pass as a parameter
                        setState(() {
                          // updateColor(Gender.female);
                          selectedGender = Gender.female;

                          /// this is an enum created in separated file
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,

                      /// Ternary operator
                      cardChild: const IconContent(
                          cardText: 'FEMALE', icon: FontAwesomeIcons.venus)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(sliderValue.toString(), style: kNumberTextStyle),
                        const Text(
                          "cm",
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme( /// used to achieve more designing
                      /// we can move this on the main file in the slidertheme property of themedata
                      data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 28.0),
                          activeTrackColor: Colors.white,
                          thumbColor: const Color(0xFF9E1847),
                          overlayColor: const Color(0x299E1847)),
                      child: Slider(
                          value: sliderValue.toDouble(),
                          min: 100.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              sliderValue = newValue.round();
                            });
                          }),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              'kg',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton( ///custom button
                                iconData: FontAwesomeIcons.minus,
                                buttonFunction: () {
                                  setState(() {
                                    this.weight--;
                                  });
                                }),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                                iconData: FontAwesomeIcons.plus,
                                buttonFunction: () {
                                  setState(() {
                                    this.weight++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                                iconData: FontAwesomeIcons.minus,
                                buttonFunction: () {
                                  setState(() {
                                    this.age--;
                                  });
                                }),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                                iconData: FontAwesomeIcons.plus,
                                buttonFunction: () {
                                  setState(() {
                                    this.age++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          NavigatorButton(
              myText: 'Calculate BMI',
              onTapFunction: () {
                CalculatorBrain calc = CalculatorBrain(
                    height: this.sliderValue,
                    weight: this.weight,
                    gender: this.selectedGender ?? Gender.male);

                // Get the results
                String bmiResult = calc.calculateBMI();
                String resultText = calc.getResult();
                String interpretation = calc.getInterpretation();

                /// Create a data object which we are going to pass to the second screen
                BMIData bmiData = BMIData(
                    bmiResult: bmiResult,
                    resultText: resultText,
                    interpretation: interpretation
                );

                Navigator.pushNamed(context, '/second_screen', arguments: bmiData); ///go to second screen
              })
        ],
      ),
    );
  }
}
