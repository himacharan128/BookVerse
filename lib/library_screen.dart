import 'package:flutter/material.dart';
import 'book.dart';
import 'book_details_screen.dart';
import 'wishlist_screen.dart';

class LibraryScreen extends StatelessWidget {
  final List<Book> _booksByGenre = [
    Book(
      title: 'Book 1',
      author: 'Author 1',
      description: 'Description 1',
      imageUrl: 'image_url_1',
    ),
    Book(
      title: 'Book 2',
      author: 'Author 2',
      description: 'Description 2',
      imageUrl: 'image_url_2',
    ),
    // Add more books by genre here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookVerse'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _booksByGenre.length,
        itemBuilder: (context, index) {
          Book book = _booksByGenre[index];
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WishlistScreen()),
          );
        },
      ),
    );
  }
}
