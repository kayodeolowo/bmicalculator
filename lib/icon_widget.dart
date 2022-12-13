import 'package:flutter/material.dart';


class iconwidget extends StatelessWidget {
  final IconData icon;
  final String label;
  iconwidget({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}
