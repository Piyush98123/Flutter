import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text("Ask Me Anything")),
            backgroundColor: Colors.blue.shade900,
          ),
          body: EightBall(),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  num = Random().nextInt(5) + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('images/ball$num.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
