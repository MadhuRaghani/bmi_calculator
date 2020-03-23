import 'package:flutter/material.dart';

class CalorieCounterScreen extends StatefulWidget {
  static final String id = "calorie_counter_screen";

  @override
  _CalorieCounterScreenState createState() => _CalorieCounterScreenState();
}

class _CalorieCounterScreenState extends State<CalorieCounterScreen> {
  double calories = 0.0;
  List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(
                  height: 75.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Coffee')) {
                              items.remove('Coffee');
                              calories -= 70.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Coffee',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 70.0;
                            items.add('Coffee');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Tea')) {
                              items.remove('Tea');
                              calories -= 70.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Tea',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 70.0;
                            items.add('Tea');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Coke')) {
                              items.remove('Coke');
                              calories -= 145.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Coke',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 145.0;
                            items.add('Coke');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Tomato Juice')) {
                              items.remove('Tomato Juice');
                              calories -= 40.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Tomato Juice',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 40.0;
                            items.add('Tomato Juice');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Orange Juice')) {
                              items.remove('Orange Juice');
                              calories -= 61.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Orange Juice',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 61.0;
                            items.add('Orange Juice');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Kachori')) {
                              items.remove('Kachori');
                              calories -= 200.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Kachori',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 200.0;
                            items.add('Kachori');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Vada Pav')) {
                              items.remove('Vada Pav');
                              calories -= 180.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Vada Pav',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 180.0;
                            items.add('Vada Pav');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Sandwich')) {
                              items.remove('Sandwich');
                              calories -= 195.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Sandwich',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 195.0;
                            items.add('Sandwich');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Pizza')) {
                              items.remove('Pizza');
                              calories -= 150.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Pizza',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 150.0;
                            items.add('Pizza');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Dhokla')) {
                              items.remove('Dhokla');
                              calories -= 75.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Dhokla',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 75.0;
                            items.add('Dhokla');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Milk / Curd')) {
                              items.remove('Milk / Curd');
                              calories -= 134.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Milk / Curd',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 134.0;
                            items.add('Milk / Curd');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Paneer')) {
                              items.remove('Paneer');
                              calories -= 80.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Paneer',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 80.0;
                            items.add('Paneer');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Cheese')) {
                              items.remove('Cheese');
                              calories -= 94.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Cheese',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 94.0;
                            items.add('Cheese');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Roti')) {
                              items.remove('Roti');
                              calories -= 85.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Roti',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 85.0;
                            items.add('Roti');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Rice')) {
                              items.remove('Rice');
                              calories -= 110.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Rice',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 110.0;
                            items.add('Rice');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Idli')) {
                              items.remove('Idli');
                              calories -= 155.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Idli',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 155.0;
                            items.add('Idli');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Noodles')) {
                              items.remove('Noodles');
                              calories -= 200.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Noodles',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 200.0;
                            items.add('Noodles');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Bread')) {
                              items.remove('Bread');
                              calories -= 155.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Bread',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 155.0;
                            items.add('Bread');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Boiled Egg')) {
                              items.remove('Boiled Egg');
                              calories -= 80.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Boiled Egg',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 80.0;
                            items.add('Boiled Egg');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Mango')) {
                              items.remove('Mango');
                              calories -= 120.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Mango',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 120.0;
                            items.add('Mango');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            if (items.contains('Grapes')) {
                              items.remove('Grapes');
                              calories -= 40.0;
                              setState(() {});
                            }
                          },
                          child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 75.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Grapes',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        child: InkWell(
                          onTap: () {
                            calories += 40.0;
                            items.add('Grapes');
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 75.0,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Color(0xff303030),
                  height: 75.0,
                  child: Center(
                    child: Text(
                      'Total Calories: ${calories < 0.0 ? calories = 0.0 : calories}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                Container(
                  color: Color(0xff303030),
                  height: 75.0,
                  child: FlatButton(
                    onPressed: () {
                      double x = 2300;
                      double difference = x - calories;
                      String title = "";
                      String body = "";
                      if (difference > 0) {
                        title = "Good News!!";
                        body = "You can still have $difference calories";
                      } else if (difference == 0) {
                        title = "Alert";
                        body = "Avoid having more calories.";
                      } else {
                        title = "Alert!";
                        body = "You've exceeded the limit already, \nAvoid more calories";
                      }
                      showGeneralDialog(
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionBuilder: (context, a1, a2, widget) {
                            return Transform.scale(
                              scale: a1.value,
                              child: Opacity(
                                opacity: a1.value,
                                child: AlertDialog(
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16.0)),
                                  title: Text(title),
                                  content: Text(body),
                                ),
                              ),
                            );
                          },
                          transitionDuration: Duration(milliseconds: 200),
                          barrierDismissible: true,
                          barrierLabel: '',
                          context: context,
                          pageBuilder: (context, animation1, animation2) {});
                    },
                    child: Center(
                      child: Text(
                        'Compare Calories',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
