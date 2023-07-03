import 'package:flutter/material.dart';
import 'Book.dart';
import 'BookDetailsScreen.dart';
import 'WishlistScreen.dart';

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
        imageUrl: 'https://i.ibb.co/TkRQzN8/tkill.png',
      ),
      Book(
        title: 'Pride and Prejudice',
        author: 'Jane Austen',
        description:
        'Pride and Prejudice is a novel by Jane Austen published in 1813.',
        price: '\$9.99',
        imageUrl: 'https://example.com/images/pride-and-prejudice.jpg',
      ),
      Book(
        title: '1984',
        author: 'George Orwell',
        description:
        '1984 is a dystopian novel by George Orwell published in 1949.',
        price: '\$11.99',
        imageUrl: 'https://example.com/images/1984.jpg',
      ),
      Book(
        title: 'The Great Gatsby',
        author: 'F. Scott Fitzgerald',
        description:
        'The Great Gatsby is a novel by F. Scott Fitzgerald published in 1925.',
        price: '\$8.99',
        imageUrl: 'https://example.com/images/the-great-gatsby.jpg',
      ),
      Book(
        title: 'The Catcher in the Rye',
        author: 'J.D. Salinger',
        description:
        'The Catcher in the Rye is a novel by J.D. Salinger published in 1951.',
        price: '\$12.99',
        imageUrl: 'https://example.com/images/the-catcher-in-the-rye.jpg',
      ),
      // Add more books...
    ],
    'Science Fiction': [
      Book(
        title: 'Dune',
        author: 'Frank Herbert',
        description: 'Dune is a science fiction novel by Frank Herbert.',
        price: '\$12.99',
        imageUrl: 'https://example.com/images/dune.jpg',
      ),
      Book(
        title: 'Ender\'s Game',
        author: 'Orson Scott Card',
        description:
        'Ender\'s Game is a science fiction novel by Orson Scott Card.',
        price: '\$9.99',
        imageUrl: 'https://example.com/images/enders-game.jpg',
      ),
      Book(
        title: 'Foundation',
        author: 'Isaac Asimov',
        description: 'Foundation is a science fiction novel by Isaac Asimov.',
        price: '\$11.99',
        imageUrl: 'https://example.com/images/foundation.jpg',
      ),
      Book(
        title: 'Neuromancer',
        author: 'William Gibson',
        description: 'Neuromancer is a science fiction novel by William Gibson.',
        price: '\$10.99',
        imageUrl: 'https://example.com/images/neuromancer.jpg',
      ),
      Book(
        title: 'Snow Crash',
        author: 'Neal Stephenson',
        description: 'Snow Crash is a science fiction novel by Neal Stephenson.',
        price: '\$13.99',
        imageUrl: 'https://example.com/images/snow-crash.jpg',
      ),
      // Add more books...
    ],
    'Romance': [
      Book(
        title: 'Romance',
        author: 'John Doe',
        description: 'A thrilling science fiction romance novel.',
        price: '\$12.99',
        imageUrl: 'https://example.com/images/romance.jpg',
      ),
      Book(
        title: 'The Hunger Games',
        author: 'Suzanne Collins',
        description: 'The Hunger Games is a dystopian novel published in 2008.',
        price: '\$9.99',
        imageUrl: 'https://example.com/images/hunger-games.jpg',
      ),
      Book(
        title: 'Dune',
        author: 'Frank Herbert',
        description: 'Dune is a science fiction novel published in 1965.',
        price: '\$11.99',
        imageUrl: 'https://example.com/images/dune.jpg',
      ),
      Book(
        title: 'Ender\'s Game',
        author: 'Orson Scott Card',
        description:
        'Ender\'s Game is a military science fiction novel published in 1985.',
        price: '\$10.99',
        imageUrl: 'https://example.com/images/enders-game.jpg',
      ),
      Book(
        title: 'The Martian',
        author: 'Andy Weir',
        description: 'The Martian is a science fiction novel published in 2011.',
        price: '\$8.99',
        imageUrl: 'https://example.com/images/the-martian.jpg',
      ),
      Book(
        title: 'Neuromancer',
        author: 'William Gibson',
        description:
        'Neuromancer is a cyberpunk science fiction novel published in 1984.',
        price: '\$12.99',
        imageUrl: 'https://example.com/images/neuromancer.jpg',
      ),
    ],
    // Add more genres...
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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsScreen(book: book),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
