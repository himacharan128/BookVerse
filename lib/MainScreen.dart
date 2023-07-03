import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'library_screen.dart';
import 'wishlist_screen.dart';
import 'shop_screen.dart';
import 'SplashScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    LibraryScreen(),
    ShopScreen(),
    WishlistScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
            backgroundColor: Colors.blue,

          ),
        ],
      ),
    );
  }
}
