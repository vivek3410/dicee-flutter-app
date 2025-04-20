import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var leftDice = 2;
  var rightDice = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.red[500],
          title: const Text(
            "DICEE",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Winky'),
          )),
      body: GestureDetector(
        onTap: () {
          var random1 = Random().nextInt(5) + 1;
          var random2 = Random().nextInt(5) + 1;

          setState(() {
            leftDice = random1;
            rightDice = random2;
          });
        },
        child: Center(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage("images/dice$leftDice.png")),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage("images/dice$rightDice.png")),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
