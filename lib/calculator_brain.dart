class CalculatorBrain{
  final int height,weight;
  double _bmi;
  CalculatorBrain({this.height,this.weight});
  String calculateBMI(){
    double bmi = (weight*100*100)/(height*height);
    _bmi=bmi;
    return bmi.toStringAsFixed(1);
  }
  String result(){
    if(_bmi>=25)
      {
        return "OverWeight";
      }
    else if(_bmi>=18.5)
      {
        return "Normal";
      }
    else{
      return "UnderWeight";
    }
  }
  String detail(){
    if(_bmi>=25)
    {
      return "You a big Fat boi, go to gym.";
    }
    else if(_bmi>=18.5)
    {
      return "You good, do what you doing.";
    }
    else{
      return "You look like a stick, eat snickers.";
    }
  }
}