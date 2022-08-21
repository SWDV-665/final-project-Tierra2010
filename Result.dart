import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int _totScore;

  Result(this._totScore);

  String calculateResult(){
    String _result;

    if(this._totScore==30){
      _result = "You are AWESOME and COOL!";
    }

    else if(20<=this._totScore){
      _result = "You are COOL!";
    }

    else if(10<=this._totScore){
      _result = "You are not bad!";
    }

    else{
      _result = "You STINKS!";
    }

    return _result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                this.calculateResult(),
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                textColor: Colors.white70,
                color: Colors.blue,
                child: Text(
                  'Back to Main Page',
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
