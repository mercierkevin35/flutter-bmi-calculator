import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final backgroundColor;
  final IconData icon;
  final void Function() onPressed;

  RoundIconButton(
      {this.backgroundColor, @required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: this.backgroundColor,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      onPressed: this.onPressed,
      child: Icon(this.icon),
    );
  }
}
