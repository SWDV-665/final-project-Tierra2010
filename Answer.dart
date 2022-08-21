import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final Function _answerQuestionFunction;
  final String _answer;
  final int _score;

  Answer(this._answerQuestionFunction, this._answer, this._score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.only(bottom: 20),
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white70,
        child: Text(
          this._answer,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        onPressed:(){ 
          _answerQuestionFunction(context,this._score);
          },
      ),
    );
  }

}
