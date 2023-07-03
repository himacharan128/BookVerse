import 'package:flutter/material.dart';
import 'Book.dart';

class WishlistScreen extends StatelessWidget {
  final Set<Book> wishlistBooks;

  const WishlistScreen({required this.wishlistBooks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: ListView.builder(
        itemCount: wishlistBooks.length,
        itemBuilder: (context, index) {
          final book = wishlistBooks.elementAt(index);
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author),
          );
        },
      ),
    );
  }
}
