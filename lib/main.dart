import 'package:flutter/material.dart';
import 'SplashScreen.dart';
void main() => runApp(BookStoreApp());

class BookStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (context) => Splash(),
      },
    );
  }
}