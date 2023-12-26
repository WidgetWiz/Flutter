import 'package:calculator/calculatorButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(CalcOUlator());
}

class CalcOUlator extends StatefulWidget{

  @override
  State<CalcOUlator> createState() {
    return CalcOUlatorState();
  }
}

class CalcOUlatorState extends State<CalcOUlator>{
  String result = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
            backgroundColor: Color(0xff252121),
            title: Text("CalcOUlator",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),
            ),
          ),
          body: Column(

            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(result,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ), //Result
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "C",onButtonClick: operatorClick,),
                    CalculatorButton(title: "DEL",onButtonClick: operatorClick,),
                    CalculatorButton(title: "%", onButtonClick: operatorClick,),
                    CalculatorButton(title: "/", onButtonClick: operatorClick,),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "7",onButtonClick: myOnClick,),
                    CalculatorButton(title: "8",onButtonClick: myOnClick,),
                    CalculatorButton(title: "9",onButtonClick: myOnClick,),
                    CalculatorButton(title: "X",onButtonClick: operatorClick,),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "4",onButtonClick: myOnClick,),
                    CalculatorButton(title: "5",onButtonClick: myOnClick,),
                    CalculatorButton(title: "6",onButtonClick: myOnClick,),
                    CalculatorButton(title: "-",onButtonClick: operatorClick,),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "1",onButtonClick: myOnClick,),
                    CalculatorButton(title: "2",onButtonClick: myOnClick,),
                    CalculatorButton(title: "3",onButtonClick: myOnClick,),
                    CalculatorButton(title: "+",onButtonClick: operatorClick,),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "0",onButtonClick: myOnClick,),
                    CalculatorButton(title: ".",onButtonClick: myOnClick,),
                    CalculatorButton(title: "=",onButtonClick: equalClick,),
                  ],
                ),
              ),

            ],
          )
      ),
    );

  }

  myOnClick(String title) {
    print (title);
    setState(() {
      result+= title;
    });

  }

  String savedNumber = "";
  String savedOperator = "";

  operatorClick(String operator) {
    String savedNumber = "";
    String savedOperator = "";

      if(savedNumber.isEmpty){
        savedNumber = result;
        savedOperator = operator;
        setState(() {
          result = "";
        });
      }
      else{
        var lhs = savedNumber;
        var rhs = result;
        var res = calculate(lhs, operator, rhs);
        savedNumber = res;

        setState(() {
          result= "";
        });

      }

  }

  equalClick(String operator){
    var lhs = savedNumber;
    var rhs = result;

    var res = calculate(lhs, operator, rhs);

    result = res;

    setState(() {
      savedNumber = "";
      savedOperator = "";
    });
  }
  String calculate(String lhs, String operator, String rhs) {
    double n1 = double.parse(lhs);
    double n2 = double.parse(rhs);
    var res = 0.0;
    if(operator == "+"){
      res = n1 + n2;
    }
    else if(operator == "-"){
      res = n1 - n2;
    }
    else if(operator == "X"){
      res = n1 * n2;
    }
    else if(operator == "/"){
      res = n1 / n2;
    }
    return "$res";

  }
}






