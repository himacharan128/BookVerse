import 'package:flutter/material.dart';
import 'Book.dart';
import 'BookDetailsScreen.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  Map<String, List<Book>> libraryData = {
    'Fiction': [
      Book(
        title: 'To Kill a Mockingbird',
        author: 'Harper Lee',
        description:
        'To Kill a Mockingbird is a novel by Harper Lee published in 1960.',
        price: '\$10.99',
        imageUrl: 'https://example.com/images/to-kill-a-mockingbird.jpg',
      ),
    ],
    'Science Fiction': [
      Book(
        title: 'Dune',
        author: 'Frank Herbert',
        description: 'Dune is a science fiction novel by Frank Herbert.',
        price: '\$12.99',
        imageUrl: 'https://example.com/images/dune.jpg',
      ),
    ],
    'Romance': [
      Book(
        title: 'Romance',
        author: 'John Doe',
        description: 'A thrilling science fiction romance novel.',
        price: '\$12.99',
        imageUrl: 'https://example.com/images/romance.jpg',
      ),
    ],
  };

  String selectedGenre = 'Fiction';
  List<Book> selectedBooks = [];
  Set<Book> wishlistBooks = {};

  @override
  void initState() {
    super.initState();
    selectedBooks = libraryData[selectedGenre] ?? [];
  }

  void handleGenreSelection(String genre) {
    setState(() {
      selectedGenre = genre;
      selectedBooks = libraryData[genre] ?? [];
    });
  }

  void handleBookSelection(Book book) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsScreen(book: book),
      ),
    );
  }

  void handleWishlistButtonPressed(Book book) {
    setState(() {
      if (wishlistBooks.contains(book)) {
        wishlistBooks.remove(book);
      } else {
        wishlistBooks.add(book);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
      ),
      body: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: libraryData.keys.map((genre) {
              return FilterChip(
                label: Text(genre),
                selected: selectedGenre == genre,
                onSelected: (selected) => handleGenreSelection(genre),
              );
            }).toList(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedBooks.length,
              itemBuilder: (context, index) {
                final book = selectedBooks[index];
                return ListTile(
                  title: Text(book.title),
                  onTap: () => handleBookSelection(book),
                  trailing: IconButton(
                    icon: wishlistBooks.contains(book)
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border),
                    onPressed: () => handleWishlistButtonPressed(book),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
