import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20), 
      child: Text(
        this._question,
        style: TextStyle(
          fontSize: 28,
          wordSpacing: 2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
