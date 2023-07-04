import 'package:flutter/material.dart';
import 'book.dart';
import 'book_details_screen.dart';
import 'wishlist_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Book> _books = [
    Book(
      title: 'Dune',
      author: 'Frank Herbert',
      description: 'Dune is a science fiction novel by Frank Herbert.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Ender\'s Game',
      author: 'Orson Scott Card',
      description:
      'Ender\'s Game is a science fiction novel by Orson Scott Card.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Foundation',
      author: 'Isaac Asimov',
      description: 'Foundation is a science fiction novel by Isaac Asimov.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Neuromancer',
      author: 'William Gibson',
      description: 'Neuromancer is a science fiction novel by William Gibson.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Snow Crash',
      author: 'Neal Stephenson',
      description: 'Snow Crash is a science fiction novel by Neal Stephenson.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      description:
      'To Kill a Mockingbird is a novel by Harper Lee published in 1960.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      description:
      'Pride and Prejudice is a novel by Jane Austen published in 1813.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: '1984',
      author: 'George Orwell',
      description:
      '1984 is a dystopian novel by George Orwell published in 1949.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      description:
      'The Great Gatsby is a novel by F. Scott Fitzgerald published in 1925.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'The Catcher in the Rye',
      author: 'J.D. Salinger',
      description:
      'The Catcher in the Rye is a novel by J.D. Salinger published in 1951.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    // Add more books here
  ];

  final List<Book> _recommendedBooks = [
    Book(
      title: 'Dune',
      author: 'Frank Herbert',
      description: 'Dune is a science fiction novel by Frank Herbert.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Ender\'s Game',
      author: 'Orson Scott Card',
      description:
      'Ender\'s Game is a science fiction novel by Orson Scott Card.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Foundation',
      author: 'Isaac Asimov',
      description: 'Foundation is a science fiction novel by Isaac Asimov.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Neuromancer',
      author: 'William Gibson',
      description: 'Neuromancer is a science fiction novel by William Gibson.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Snow Crash',
      author: 'Neal Stephenson',
      description: 'Snow Crash is a science fiction novel by Neal Stephenson.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    // Add more recommended books here
  ];

  final List<Book> _popularBooks = [
    Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      description:
      'To Kill a Mockingbird is a novel by Harper Lee published in 1960.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      description:
      'Pride and Prejudice is a novel by Jane Austen published in 1813.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: '1984',
      author: 'George Orwell',
      description:
      '1984 is a dystopian novel by George Orwell published in 1949.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      description:
      'The Great Gatsby is a novel by F. Scott Fitzgerald published in 1925.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'The Catcher in the Rye',
      author: 'J.D. Salinger',
      description:
      'The Catcher in the Rye is a novel by J.D. Salinger published in 1951.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    Book(
      title: 'Foundation',
      author: 'Isaac Asimov',
      description: 'Foundation is a science fiction novel by Isaac Asimov.',
      imageUrl: 'assets/images/dune.jpeg',
    ),
    // Add more popular books here
  ];

  List<Book> _searchResults = [];

  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

  void _searchBooks(String keyword) {
    List<Book> results = _books.where((book) {
      return book.title.toLowerCase().contains(keyword.toLowerCase());
    }).toList();

    setState(() {
      _searchResults = results;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search books...',
            border: InputBorder.none,
          ),
          onChanged: _searchBooks,
        )
            : Text('BookVerse'),
        actions: [
          IconButton(
            icon: Icon(_isSearching ? Icons.cancel : Icons.search),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                _searchController.clear();
                _searchResults.clear();
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_searchResults.isNotEmpty)
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Search Results'),
              ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                Book book = _searchResults[index];
                return ListTile(
                  leading: Container(
                    width: 50,
                    child: Image.asset(book.imageUrl),
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
            if (_searchResults.isEmpty)
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Recommended Books'),
              ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _recommendedBooks.length,
              itemBuilder: (context, index) {
                Book book = _recommendedBooks[index];
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
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Popular Books'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _popularBooks.length,
              itemBuilder: (context, index) {
                Book book = _popularBooks[index];
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
          ],
        ),
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