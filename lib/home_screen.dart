import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Book.dart';
import 'WishlistScreen.dart';
import 'LibraryScreen.dart';
import 'StoreScreen.dart';
import 'HomeScreen.dart';
import 'wishlist_books_notifier.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final WishlistBooksNotifier wishlistBooksNotifier = WishlistBooksNotifier();
  static Set<Book> wishlistBooks = {}; // Create an empty set of wishlistBooks

  static List<Widget> _widgetOptions(BuildContext context) {
    final notifier = Provider.of<WishlistBooksNotifier>(context);
    return <Widget>[
      HomeScreen(),
      LibraryScreen(),
      Builder(
        builder: (context) => WishlistScreen(wishlistBooks: notifier.wishlistBooks),
      ),
      StoreScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => WishlistBooksNotifier(),
    child: Scaffold(
      appBar: AppBar(
        title: const Text('BookVerse'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: _widgetOptions(context).elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
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
            icon: Icon(Icons.add_circle),
            label: 'Wishlist',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store_sharp),
            label: 'Store',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    ),
    );
  }
}
