import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: this.onPressed,
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
