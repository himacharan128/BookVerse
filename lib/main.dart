import 'package:bookverse/home_screen.dart';
import 'package:bookverse/login_screen.dart';
import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'package:provider/provider.dart';
import 'wishlist_books_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WishlistBooksNotifier(),
      child: BookVerseApp(),
    ),
  );
}

class BookVerseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'login': (context) => login(),
        'home': (context) => Home(),
        'splash': (context) => Splash(),
      },
    );
  }
}