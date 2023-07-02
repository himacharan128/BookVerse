import 'package:bookverse/home_screen.dart';
import 'package:bookverse/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BookVerseApp());
}

class BookVerseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'login': (context) => login(),
        'home': (context) => home() ,
      },
    );
  }
}
