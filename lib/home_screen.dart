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
      description: 'Dune is set in the distant future amidst a feudal '
          'interstellar society in which various noble houses control '
          'planetary fiefs. It tells the story of young Paul Atreides,'
          ' whose family accepts the stewardship of the planet Arrakis. '
          'While the planet is an inhospitable and sparsely populated '
          'desert wasteland, it is the only source of melange, or "spice",'
          ' a drug that extends life and enhances mental abilities. '
          'Melange is also necessary for space navigation, which requires '
          'a kind of multidimensional awareness and foresight that only '
          'the drug provides. As melange can only be produced on Arrakis, '
          'control of the planet is a coveted and dangerous undertaking. '
          'The story explores the multilayered interactions of politics, '
          'religion, ecology, technology, and human emotion, as the factions '
          'of the empire confront each other in a struggle for the control of '
          'Arrakis and its spice. ',
      imageUrl: 'assets/images/dune.png',
    ),
    Book(
      title: 'Ender\'s Game',
      author: 'Orson Scott Card',
      description:
      'Andrew "Ender" Wiggin thinks he is playing computer simulated war games; he is, '
          'in fact, engaged in something far more desperate. The result of genetic experimentation,'
          ' Ender may be the military genius Earth desperately needs in a war against an alien '
          'enemy seeking to destroy all human life. The only way to find out is to throw Ender into '
          'ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender '
          'Wiggin is six years old when it begins. He will grow up fast.',
      imageUrl: 'assets/images/ender.jpg',
    ),
    Book(
      title: 'Foundation',
      author: 'Isaac Asimov',
      description: 'For twelve thousand years the Galactic Empire has ruled supreme. Now it is dying.'
          ' But only Hari Seldon, creator of the revolutionary science of psychohistory, can see into'
          ' the future--to a dark age of ignorance, barbarism, and warfare that will last thirty thousand '
          'years. To preserve knowledge and save humankind, Seldon gathers the best minds in the Empire--both '
          'scientists and scholars--and brings them to a bleak planet at the edge of the galaxy to serve as a '
          'beacon of hope for future generations. He calls his sanctuary the Foundation.',
      imageUrl: 'assets/images/foundation.jpg',
    ),
    Book(
      title: 'Neuromancer',
      author: 'William Gibson',
      description: 'Neuromancer is a science fiction novel by William Gibson.',
      imageUrl: 'assets/images/neuromancer.png',
    ),
    Book(
      title: 'Snow Crash',
      author: 'Neal Stephenson',
      description: 'Snow Crash is a science fiction novel by Neal Stephenson.',
      imageUrl: 'assets/images/snow.jpg',
    ),
    Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      description:
      'To Kill a Mockingbird is a novel by Harper Lee published in 1960.',
      imageUrl: 'assets/images/tkill.jpg',
    ),
    Book(
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      description:
      'Pride and Prejudice is a novel by Jane Austen published in 1813.',
      imageUrl: 'assets/images/pandp.jpg',
    ),
    Book(
      title: '1984',
      author: 'George Orwell',
      description:
      '1984 is a dystopian novel by George Orwell published in 1949.',
      imageUrl: 'assets/images/1984.jpg',
    ),
    Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      description:
      'The Great Gatsby is a novel by F. Scott Fitzgerald published in 1925.',
      imageUrl: 'assets/images/thegreat.jpg',
    ),
    Book(
      title: 'The Catcher in the Rye',
      author: 'J.D. Salinger',
      description:
      'The Catcher in the Rye is a novel by J.D. Salinger published in 1951.',
      imageUrl: 'assets/images/dune.png',
    ),
    // Add more books here
  ];

  final List<Book> _recommendedBooks = [
    Book(
      title: 'Dune',
      author: 'Frank Herbert',
      description: 'Dune is set in the distant future amidst a feudal '
          'interstellar society in which various noble houses control '
          'planetary fiefs. It tells the story of young Paul Atreides,'
          ' whose family accepts the stewardship of the planet Arrakis. '
          'While the planet is an inhospitable and sparsely populated '
          'desert wasteland, it is the only source of melange, or "spice",'
          ' a drug that extends life and enhances mental abilities. '
          'Melange is also necessary for space navigation, which requires '
          'a kind of multidimensional awareness and foresight that only '
          'the drug provides. As melange can only be produced on Arrakis, '
          'control of the planet is a coveted and dangerous undertaking. '
          'The story explores the multilayered interactions of politics, '
          'religion, ecology, technology, and human emotion, as the factions '
          'of the empire confront each other in a struggle for the control of '
          'Arrakis and its spice. ',
      imageUrl: 'assets/images/dune.png',
    ),
    Book(
      title: 'Ender\'s Game',
      author: 'Orson Scott Card',
      description:
      'Andrew "Ender" Wiggin thinks he is playing computer simulated war games; he is, '
          'in fact, engaged in something far more desperate. The result of genetic experimentation,'
          ' Ender may be the military genius Earth desperately needs in a war against an alien '
          'enemy seeking to destroy all human life. The only way to find out is to throw Ender into '
          'ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender '
          'Wiggin is six years old when it begins. He will grow up fast.',
      imageUrl: 'assets/images/ender.jpg',
    ),
    Book(
      title: 'Foundation',
      author: 'Isaac Asimov',
      description: 'For twelve thousand years the Galactic Empire has ruled supreme. Now it is dying.'
          ' But only Hari Seldon, creator of the revolutionary science of psychohistory, can see into'
          ' the future--to a dark age of ignorance, barbarism, and warfare that will last thirty thousand '
          'years. To preserve knowledge and save humankind, Seldon gathers the best minds in the Empire--both '
          'scientists and scholars--and brings them to a bleak planet at the edge of the galaxy to serve as a '
          'beacon of hope for future generations. He calls his sanctuary the Foundation.',
      imageUrl: 'assets/images/foundation.jpg',
    ),
    Book(
      title: 'Neuromancer',
      author: 'William Gibson',
      description: 'Neuromancer is a science fiction novel by William Gibson.',
      imageUrl: 'assets/images/neuromancer.png',
    ),
    Book(
      title: 'Snow Crash',
      author: 'Neal Stephenson',
      description: 'Snow Crash is a science fiction novel by Neal Stephenson.',
      imageUrl: 'assets/images/snow.jpg',
    ),
    // Add more recommended books here
  ];

  final List<Book> _popularBooks = [
    Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      description:
      'To Kill a Mockingbird is a novel by Harper Lee published in 1960.',
      imageUrl: 'assets/images/tkill.jpg',
    ),
    Book(
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      description:
      'Pride and Prejudice is a novel by Jane Austen published in 1813.',
      imageUrl: 'assets/images/pandp.jpg',
    ),
    Book(
      title: '1984',
      author: 'George Orwell',
      description:
      '1984 is a dystopian novel by George Orwell published in 1949.',
      imageUrl: 'assets/images/1984.jpg',
    ),
    Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      description:
      'The Great Gatsby is a novel by F. Scott Fitzgerald published in 1925.',
      imageUrl: 'assets/images/thegreat.jpg',
    ),
    Book(
      title: 'The Catcher in the Rye',
      author: 'J.D. Salinger',
      description:
      'The Catcher in the Rye is a novel by J.D. Salinger published in 1951.',
      imageUrl: 'assets/images/dune.png',
    ),
    Book(
      title: 'Foundation',
      author: 'Isaac Asimov',
      description: 'Foundation is a science fiction novel by Isaac Asimov.',
      imageUrl: 'assets/images/foundation.jpg',
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
          decoration: const InputDecoration(
            hintText: 'Search books...',
            border: InputBorder.none,
          ),
          onChanged: _searchBooks,
        )
            : const Text('BookVerse'),
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
              const Padding(
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
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Recommended Books'),
              ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _recommendedBooks.length,
              itemBuilder: (context, index) {
                Book book = _recommendedBooks[index];
                return ListTile(
                  leading: Container(
                    width: 50, // Set the desired width for the leading widget
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Popular Books'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _popularBooks.length,
              itemBuilder: (context, index) {
                Book book = _popularBooks[index];
                return ListTile(
                  leading: Container(
                    width: 50, // Set the desired width for the leading widget
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