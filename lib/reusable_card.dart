import 'package:flutter/material.dart';
import 'input_page.dart' as inp;
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ReusableCard extends StatelessWidget {
  final Color colour;
  ReusableCard(this.colour,{this.cardChild,this.onPress});
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
