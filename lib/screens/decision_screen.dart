import 'package:bmicalculator/screens/calorie_counter_screen.dart';
import 'package:bmicalculator/screens/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/customized_widgets/icon_content.dart';
import 'package:bmicalculator/customized_widgets/reusable_card.dart';

class DecisionPage extends StatefulWidget {
  @override
  _DecisionPageState createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: new ReusableCard(
              cardChild: IconContent(
                icon: Icon(
                  FontAwesomeIcons.calculator,
                  size: 80.0,
                ),
                text: Text('Calculate BMI',style: kTextStyle),
              ),
              onPress: (){
                setState(() {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(
                        ),
                      ),
                    );//Navigator
                });
              },
              colour: kActiveColor,
            ),
          ),
          Expanded(
            child: new ReusableCard(
              cardChild: IconContent(
                icon: Icon(
                  FontAwesomeIcons.cheese,
                  size: 80.0,
                ),
                text: Text('Calorie Counter',style: kTextStyle),
              ),
              onPress: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CalorieCounterScreen(
                        ),
                      ),
                    );//Navigator
                });
              },
              colour: kActiveColor,
            ),
          ),
          Expanded(
            child: new ReusableCard(
              cardChild: IconContent(
                icon: Icon(
                  FontAwesomeIcons.info,
                  size: 60.0,
                ),
                text: Text('About',style: kTextStyle),
              ),
              onPress: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AboutDialog(
                      applicationName: "BMI Calculator",
                      applicationVersion: "2.0.1",
                      applicationLegalese: "A BMI Calculator App which calculates your Body Mass Index as well as guides about Daily Calorie Intake.",

                    ),
                  ),
                  );//Navigator
                });
              },
              colour: kActiveColor,
            ),
          ),

        ],
      ),
    );
  }
}
