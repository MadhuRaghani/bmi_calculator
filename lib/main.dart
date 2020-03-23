import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/screens/input_page.dart';
import 'package:bmicalculator/screens/results_page.dart';
import 'package:bmicalculator/screens/decision_screen.dart';
import 'package:bmicalculator/screens/calorie_counter_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kActiveColor,
        scaffoldBackgroundColor: Colors.white
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => DecisionPage(),
        '/input' : (context) => InputPage(),
        '/calorie_counter' : (context) => CalorieCounterScreen(),
        '/results' : (context) => ResultsPage(),
      },
    );
  }
}

