import 'package:calculator/calculatorButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MySimpleApp());
}

class MySimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Color(0xff252121),
          title: Text('CalcOUlator',
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
                  child: Text("9786754",
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
                    CalculatorButton(title: "C"),
                    CalculatorButton(title: "DEL"),
                    CalculatorButton(title: "%"),
                    CalculatorButton(title: "/"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "7"),
                    CalculatorButton(title: "8"),
                    CalculatorButton(title: "9"),
                    CalculatorButton(title: "X"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "4"),
                    CalculatorButton(title: "5"),
                    CalculatorButton(title: "6"),
                    CalculatorButton(title: "-"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "1"),
                    CalculatorButton(title: "2"),
                    CalculatorButton(title: "3"),
                    CalculatorButton(title: "+"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(title: "0"),

                    CalculatorButton(title: "."),
                    CalculatorButton(title: "="),
                  ],
                ),
              ),

            ],
        )
      ),
    );
  }
}
