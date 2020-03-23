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
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF090F32),
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

