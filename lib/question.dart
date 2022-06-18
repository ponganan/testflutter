import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({Key? key}) : super(key: key);
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      /* child: Align(
        alignment: Alignment.center,
        child: Text(
          'adaasd',
          style: TextStyle(
            //fontFamily: font,
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
      ),*/
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
