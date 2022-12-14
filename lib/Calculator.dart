// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_widget.dart';
import 'reuseable_card.dart';

const bottomcontainerheight = 70.0;
const activeColor = Color.fromARGB(255, 64, 72, 221);
const inactiveColor = Color(0xFF1D1E33);

enum Gender {
  male,
  female,
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bmi Calculator'),
        backgroundColor: Color.fromARGB(255, 235, 62, 105),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                //gesture detector used in place of on pressed because g.d wont afect ui o button.
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReuseableCard(
                    mycolor: selectedGender == Gender.male
                        ? activeColor
                        : inactiveColor,
                    cardChild: Iconwidget(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReuseableCard(
                    mycolor: selectedGender == Gender.female
                        ? activeColor
                        : inactiveColor,
                    cardChild: Iconwidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //midlle card
        Expanded(
          child: ReuseableCard(
            mycolor: Colors.blueAccent,
            cardChild: Iconwidget(
              icon: FontAwesomeIcons.venus,
              label: "FEMALE",
            ),
          ),
        ),

        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  mycolor: Color(0xFF1D1E33),
                  cardChild: (Column()),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  mycolor: Color(0xFF1D1E33),
                  cardChild: (Column()),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.red,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomcontainerheight,
        )
      ]),
    );
  }
}
