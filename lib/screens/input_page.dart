import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/customized_widgets/icon_content.dart';
import 'package:bmicalculator/customized_widgets/reusable_card.dart';
import 'package:bmicalculator/customized_widgets/raw_material_button.dart';
import 'package:bmicalculator/calculator_brain.dart';
import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;
  Color maleCardColor = kInActiveColor;
  Color femaleCardColor = kInActiveColor;

  void genderCardPressed(Gender gender) {
    if ((gender == Gender.male && maleCardColor == kInActiveColor) ||
        (gender == Gender.female && femaleCardColor == kActiveColor)) {
      maleCardColor = kActiveColor;
      femaleCardColor = kInActiveColor;
    } else {
      maleCardColor = kInActiveColor;
      femaleCardColor = kActiveColor;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    cardChild: IconContent(
                      icon: Icon(
                        FontAwesomeIcons.mars,
                        color: Colors.white,
                        size: 80.0,
                      ),
                      text: Text('MALE',style: kTextStyle),
                    ),
                    onPress: (){
                      setState(() {
                        genderCardPressed(Gender.male);
                      });
                    },
                    colour: maleCardColor,
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    cardChild: IconContent(icon: Icon(FontAwesomeIcons.venus, color: Colors.white, size: 80.0,), text: Text('FEMALE',style: kTextStyle,),),
                    onPress: (){
                      setState(() {
                        genderCardPressed(Gender.female);
                      });
                    },
                    colour: femaleCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: new ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kBigTextStyle,),
                      Text("cm", style: kBigTextStyle,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kActiveColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("WEIGHT", style: kTextStyle,),
                        Text(weight.toString(), style: kBigTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(iconData: FontAwesomeIcons.plus, onPressing: (){
                              setState(() {
                                weight++;
                              });
                            },),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(iconData: FontAwesomeIcons.minus, onPressing: (){
                              setState(() {
                                weight--;
                              });
                            },),
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveColor,
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    colour: kActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("AGE", style: kTextStyle,),
                        Text(age.toString(), style: kBigTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(iconData: FontAwesomeIcons.plus, onPressing: (){
                              setState(() {
                                age++;
                              });
                            },),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(iconData: FontAwesomeIcons.minus, onPressing: (){
                              setState(() {
                                age--;
                              });
                            },),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){

              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiValue: calc.calculateBMI(),
                result: calc.getResult(),
                interpretation: calc.getInterpretation(),
              ),),);
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(child: Text("CALCULATE", style: kLargeTextButtonStyle,)),
            ),
          ),
        ],
      ),
    );
  }
}
