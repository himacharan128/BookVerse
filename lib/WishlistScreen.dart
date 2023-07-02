import 'package:flutter/material.dart';
class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'WISHLIST',
          style: optionStyle,
        ),
      ),
    );

  }
}
