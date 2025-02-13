import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/second_screen.dart';


const primaryColour = Color(0xFF0D101F);
const appBarColor = Color(0xFF11162C);

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: primaryColour,
          scaffoldBackgroundColor: primaryColour,
          appBarTheme: const AppBarTheme(
            color: appBarColor,
          )),
      initialRoute: '/',
      routes:{
        '/' :(context) => const InputPage(),
        '/second_screen': (context) => const SecondScreen()
      }
      ,
    );
  }
}
