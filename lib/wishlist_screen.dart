import 'package:flutter/material.dart';
import 'book.dart';
import 'book_details_screen.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final List<Book> _wishlistBooks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookVerse'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _wishlistBooks.length,
        itemBuilder: (context, index) {
          Book book = _wishlistBooks[index];
          return ListTile(
            leading: Container(
              width: 50, // Set the desired width for the leading widget
              child: Image.network(book.imageUrl),
            ),
            title: Text(book.title),
            subtitle: Text(book.author),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsScreen(book: book),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
