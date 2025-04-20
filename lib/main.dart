import 'package:flutter/material.dart';
import 'package:flutter_dice/home_screen.dart';

void main() {
  runApp(const Dicee());
}

class Dicee extends StatelessWidget {
  const Dicee({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
