import 'package:flutter/material.dart';
import 'book.dart';

class ShopScreen extends StatelessWidget {
  final List<Book> _books = [
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
    // Add more books for sale here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookVerse'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _books.length,
        itemBuilder: (context, index) {
          Book book = _books[index];
          return ListTile(
            contentPadding: EdgeInsets.all(16.0),
            leading: SizedBox(
              width: 80.0,
              child: Image.network(book.imageUrl),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book.title),
                Text(
                  book.author,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
            subtitle: Text(book.description),
            trailing: Text('Price'),
          );
        },
      ),
    );
  }
}
