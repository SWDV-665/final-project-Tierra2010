import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class Quiz extends StatelessWidget {
  final int _tempIndex;
  final List<Map<String, Object>> _questions;
  final Function _answerQuestion;

  Quiz(this._tempIndex, this._questions, this._answerQuestion,);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Question(_questions[_tempIndex]["questionText"]),
          Expanded(
            child: Container(
              height: double.infinity,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  itemCount: (_questions[_tempIndex]["answers"] as List)
                      .length,
                  itemBuilder: (context, position) {
                    return Answer(
                        this._answerQuestion,
                       ( _questions[_tempIndex]["answers"] as List)[position]["text"],( _questions[_tempIndex]["answers"] as List)[position]["score"]);
                  },
                ),
              ),
            ),
          )
        ],
      );
  }
}
