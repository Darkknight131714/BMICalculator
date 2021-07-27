import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
class ResultsPage extends StatelessWidget {
  final String bmi,result,detail;
  ResultsPage({this.bmi,this.detail,this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text("Your Result",style: kResult,)
          )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(kBgcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(result.toUpperCase(),style: kValue,),
                Text(bmi,style: kBMI,),
                Text(detail,style: kBody,textAlign: TextAlign.center,),
              ],
            ),
            ),
          ),
          BottomButton(title: "RE-CALCULATE",onTap: (){Navigator.pop(context);},)
        ],
      ),
    );
  }
}

