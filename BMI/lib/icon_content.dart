import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.iconText});

  final String iconText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
