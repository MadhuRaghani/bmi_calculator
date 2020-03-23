import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const Color kActiveColor = Color(0xFF1D1E33);
const Color kInActiveColor = Color(0xFF111328);
const Color kBottomContainerColor = Color(0xFFEB1555);

enum Gender {
  female, male
}

const TextStyle kTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const TextStyle kBigTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeTextButtonStyle = TextStyle(
  color: Colors.white,
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);

const kResultValueTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
