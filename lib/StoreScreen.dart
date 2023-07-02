import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'STORE',
          style: optionStyle,
        ),
      ),
    );

  }
}
