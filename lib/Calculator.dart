// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xFF0A0E21),
      ),

      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: child),
              Expanded(child: child),
            ],
          ),
        ),

         Expanded(
          child: Row(
            children: [],
          ),
        ),

         Expanded(
          child: Row(
            children: [
              
              Expanded(child: child),
              Expanded(child: child),
          
            ],
          ),
        )
      ]),
      // body: Container(
      //   margin: EdgeInsets.all(15),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(10.0),
      //     color: Color(0xFF1D1E33),
      //   ),
    );
  }
}
