import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'HOME',
          style: optionStyle,
        ),
      ),
    );

  }
}
