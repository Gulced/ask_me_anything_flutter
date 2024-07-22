import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: const Answer(), // Use const here since Answer is a stateless widget
    ),
  ));
}

class Answer extends StatefulWidget {
  const Answer({super.key});

  @override
  State<Answer> createState() => _AnswerState();

}

class _AnswerState extends State<Answer> {

  int dice=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            setState(() {
              dice=Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$dice.png')), // Ensure the path is correct
    );
  }
}
