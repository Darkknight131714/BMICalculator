import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  final String texti;
  final IconData iconi;
  IconContent(this.texti,this.iconi);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconi,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(texti,style: kLabelTextStyle,
        ),
      ],
    ),
    );
  }
}
