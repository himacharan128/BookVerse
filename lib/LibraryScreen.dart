import 'package:flutter/material.dart';
class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'LIBRARY',
          style: optionStyle,
        ),
      ),
    );

  }
}
