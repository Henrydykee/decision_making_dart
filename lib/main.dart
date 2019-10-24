import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueAccent,
        ),
        body: DesionMaking(),
      ),
    ),
  );
}

class DesionMaking extends StatefulWidget {
  @override
  _DesionMakingState createState() => _DesionMakingState();
}

class _DesionMakingState extends State<DesionMaking> {
  int ball = 1;
  void BallRoll(){
    setState(() {
      ball = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('image/ball$ball.png'),
              onPressed: (){
                setState(() {
                    BallRoll();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
