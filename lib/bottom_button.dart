import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;
  BottomButton({this.onTap,this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(title,style: kLarge,)),
        color: kBottom,
        margin: EdgeInsets.only(top:10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
