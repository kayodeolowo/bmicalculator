import 'package:flutter/material.dart';

import 'constants.dart';

class Iconwidget extends StatelessWidget {
  final IconData icon;
  final String label;

  Iconwidget({required this.icon, required this.label});

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
