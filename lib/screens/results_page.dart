import 'package:flutter/material.dart';
import 'package:bmicalculator/customized_widgets/reusable_card.dart';
import 'package:bmicalculator/constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.result, @required this.interpretation, @required this.bmiValue});

  final String result;
  final String interpretation;
  final String bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Your Result:", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45.0,
              ),
              ),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: new ReusableCard(colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(interpretation, style: kResultTextStyle),
                  ),
                  Text(bmiValue, style: kResultValueTextStyle,),
                  Text(result, style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                    textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(child: Text("RE-CALCULATE", style: kLargeTextButtonStyle,)),
            ),
          ),
        ],
      ),
    );
  }
}


//cardChild: Column(
//    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//    children: <Widget>[

//    ],
//    ),