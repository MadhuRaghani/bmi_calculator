import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.text});

  final Icon icon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 15.0,
        ),
        text,
      ],
    );
  }
}
