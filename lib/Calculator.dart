// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_widget.dart';
import 'reuseable_card.dart';

const bottomcontainerheight = 70.0;

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
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
                    print("presses");
                  },
                  child: ReuseableCard(
                    mycolor: Color.fromARGB(255, 113, 131, 15),
                    cardChild: (iconwidget(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    )),
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  mycolor: Color.fromARGB(255, 84, 91, 226),
                  cardChild: (iconwidget(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  )),
                ),
              ),
            ],
          ),
        ),

        //midlle card
        Expanded(
          child: ReuseableCard(
            mycolor: Colors.blueAccent,
            cardChild: (iconwidget(
              icon: FontAwesomeIcons.venus,
              label: "FEMALE",
            )),
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
