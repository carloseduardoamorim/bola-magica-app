import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BolaPage(),
      ),
    );

class BolaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Pergunte-me Qualquer coisa!!'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Bola(),
    );
  }
}

class Bola extends StatefulWidget {
  @override
  _BolaState createState() => _BolaState();
}

class _BolaState extends State<Bola> {
  int numBola = 1;
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            numBola = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$numBola.png'),
      ),
    );
  }
}
