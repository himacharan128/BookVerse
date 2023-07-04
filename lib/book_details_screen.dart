import 'package:flutter/material.dart';
import 'book.dart';
import 'wishlist_screen.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  const BookDetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookVerse'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image.asset(book.imageUrl),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                book.title,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                book.author,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                book.description,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WishlistScreen()),
                );
              },
              child: Text('Add to Wishlist'),
            ),
          ],
        ),
      ),
    );
  }
}
