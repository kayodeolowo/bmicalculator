 import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color mycolor;
  final Widget cardChild;

  ReuseableCard({required this.mycolor, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: mycolor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
