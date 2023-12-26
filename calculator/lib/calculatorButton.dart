import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String title;
  const CalculatorButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 2.0, right: 2.0),
        child: ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff808080), // Set the background color to aqua
            padding: EdgeInsets.all(16.0), // Adjust padding as needed
        ),
          child: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),),
        ),
      ),
    );
  }
}
