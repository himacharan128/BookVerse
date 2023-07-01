import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  //static const List<Widget> _widgetOptions = <Widget>[
  //  HomeScreen(),
  //  LibraryScreen(),
  //  WishlistScreen(),
  //  StoreScreen(),
  //];
  static const List<Widget> _widgetOptions = <Widget>[//instead of texts we have to use screens
    Text(
      'Index 0: Home',// just for reference
      style: optionStyle,
    ),
    Text(
      'Index 1: Library',// just for reference
      style: optionStyle,
    ),
    Text(
      'Index 2: Wishlist',// just for reference
      style: optionStyle,
    ),
    Text(
      'Index 3: Store',// just for reference
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BookVerse') ,centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books ),
            label: 'Library',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle ),
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
    );
  }
}
