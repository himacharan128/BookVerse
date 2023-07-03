import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Book.dart';
import 'wishlist_books_notifier.dart';

class WishlistScreen extends StatelessWidget {
  final Set<Book> wishlistBooks;

  WishlistScreen({required this.wishlistBooks});

  @override
  Widget build(BuildContext context) {
    final wishlistBooks = context.watch<WishlistBooksNotifier>().wishlistBooks;
    return Scaffold(
      body: ListView.builder(
        itemCount: wishlistBooks.length,
        itemBuilder: (context, index) {
          final book = wishlistBooks.elementAt(index);
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author),
            // Display other book details as needed
          );
        },
      ),
    );
  }
}
