import 'package:flutter/material.dart';
import 'package:tunes/screens/home.dart';

void main() {
  runApp(const Tunes());
}

class Tunes extends StatelessWidget {
  const Tunes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
