import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function func;
  RoundIconButton({this.icon,this.func});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:(){
        func();
      },
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 10,
      constraints: BoxConstraints.tightFor(width: 40,height: 40),
    );
  }
}