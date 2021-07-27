import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'round_button.dart';
import 'calculator_brain.dart';
bool valm=false,valf=false;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void increase()
  {
    setState(() {
      weight++;
    }
  );

  }
  void decrease()
  {
    setState(() {
      weight--;
    }
    );

  }
  int height=180;
  int age=18;
  int weight=60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ReusableCard(valm?kBgcolor:kOtherColor,cardChild: IconContent("Male",FontAwesomeIcons.mars),onPress: (){
                    setState(() {
                      valm=!valm;
                      if(valm&&valf)
                        {
                          valf=false;
                        }
                    });
                  }
                  ),
                ),
                Expanded(
                  child: ReusableCard(valf?kBgcolor:kOtherColor,cardChild: IconContent("Female",FontAwesomeIcons.venus),onPress: (){
                    setState(() {
                      valf=!valf;
                      if(valf&&valm)
                        {
                          valm=false;
                        }
                    });
                  }
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(kBgcolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height",style: kLabelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("$height",style: kNumberStyle),
                        Text("cm",style: kLabelTextStyle,)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        inactiveTrackColor:Color(0xFF8D8E98),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 250,
                        onChanged: (double newValue){
                          setState(() {
                            height=newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ReusableCard(kBgcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight",style: kLabelTextStyle,),
                        Text("$weight",style: kNumberStyle,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus,func: decrease,),
                            SizedBox(width:10),
                            RoundIconButton(icon: FontAwesomeIcons.plus,func: increase,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(kBgcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age",style: kLabelTextStyle,),
                        Text("$age",style: kNumberStyle,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus,func: (){setState(() {age--;});},),
                            SizedBox(width:10),
                            RoundIconButton(icon: FontAwesomeIcons.plus,func: (){setState(() {age++;});}
                            ,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          BottomButton(title: "Calculate", onTap: (){
            CalculatorBrain calc =CalculatorBrain(height: height,weight: weight);
            calc.calculateBMI();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(bmi: calc.calculateBMI(),result: calc.result(),detail: calc.detail(),))
            );
          },)
        ],
      )
    );
  }
}





