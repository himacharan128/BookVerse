import 'package:flutter/material.dart';
import 'book.dart';
import 'book_details_screen.dart';
import 'wishlist_screen.dart';

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  final List<Book> _booksByGenre = [
    Book(
        title: 'The Silent Witness',
        author: 'Sarah Roberts',
        description: 'A thrilling crime novel that follows Detective Emma Johnson as she investigates a series of mysterious murders in a small town. As the body count rises, Emma must unravel the dark secrets and uncover the true identity of the silent witness.',
        imageUrl: 'assets/images/thesilent.jpg',
        genre: 'Crime'
    ),
    Book(
        title: 'The Astral Traveler',
        author: 'Mark Stevens',
        description: 'A mind-expanding journey through the realms of astral projection and metaphysics. Join the protagonist as they explore alternate dimensions, encounter celestial beings, and unlock the secrets of the universe.',
        imageUrl: 'assets/images/astral.jpg',
        genre: 'Fantasy'
    ),
    Book(
        title: 'The Lost Kingdom',
        author: 'Michael Anderson',
        description: 'An epic fantasy adventure set in a mythical land where kingdoms are at war. Follow the journey of a young warrior as he embarks on a quest to find the lost artifact that holds the key to restoring peace in the realm.',
        imageUrl: 'assets/images/thelost.jpg',
        genre: 'Fantasy'
    ),
    Book(
        title: 'The Healing Power of Words',
        author: 'Jennifer Roberts',
        description: 'A heartwarming story about a struggling writer who finds solace and healing through the power of words. Join her on a journey of self-discovery, love, and the transformative magic of storytelling.',
        imageUrl: 'assets/images/healing.jpg',
        genre: 'Contemporary Fiction'
    ),
    Book(
        title: 'The Quantum Paradox',
        author: 'David Thompson',
        description: 'A mind-bending science fiction novel that explores the boundaries of reality and the nature of the universe. Dive into a world where quantum mechanics and parallel dimensions collide, challenging everything we thought we knew.',
        imageUrl: 'assets/images/quantum.jpg',
        genre: 'Science Fiction'
    ),
    Book(
        title: 'The Art of War',
        author: 'Sun Tzu',
        description: 'An ancient Chinese treatise on military strategy and tactics. This timeless classic provides insights into the nature of conflict, leadership, and the art of winning without fighting.',
        imageUrl: 'assets/images/artofwar.jpg',
        genre: 'Non-fiction'
    ),
    Book(
        title: 'The Hobbit',
        author: 'J.R.R. Tolkien',
        description: 'A beloved fantasy adventure that follows Bilbo Baggins, a hobbit who is whisked away on a journey to reclaim a lost dwarf kingdom. Along the way, he encounters magical creatures, battles fierce enemies, and discovers his own courage.',
        imageUrl: 'assets/images/hobbit.jpg',
        genre: 'Fantasy'
    ),
    Book(
        title: 'The Enigma Code',
        author: 'Robert Anderson',
        description: 'A gripping historical thriller set during World War II, where a team of codebreakers races against time to decipher the enigma code used by the enemy. The fate of nations hangs in the balance as they navigate treacherous secrets and deadly conspiracies.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Crime'
    ),
    Book(
        title: 'The Midnight Garden',
        author: 'Emily Collins',
        description: 'A hauntingly beautiful tale of forbidden love and dark secrets set in a mysterious garden. As two star-crossed lovers navigate the barriers of their world, they uncover a hidden realm of magic and danger.',
        imageUrl: 'assets/images/midnightgarden.jpg',
        genre: 'Fantasy'
    ),
    Book(
        title: 'The Great Gatsby',
        author: 'F. Scott Fitzgerald',
        description: 'A classic American novel set in the Jazz Age of the 1920s. Follow the enigmatic millionaire Jay Gatsby as he pursues his impossible dream and explores themes of love, wealth, and the corruption of the American Dream.',
        imageUrl: 'assets/images/thegreat.jpg',
        genre: 'Contemporary Fiction'
    ),
    Book(
        title: 'The Power of Now',
        author: 'Eckhart Tolle',
        description: 'A spiritual guide that emphasizes the importance of living in the present moment and finding enlightenment. Through practical teachings and insights, the author invites readers to transcend their ego and experience inner peace and joy.',
        imageUrl: 'assets/images/powerofnow.jpg',
        genre: 'Non-fiction'
    ),
    Book(
        title: 'The Last Frontier',
        author: 'Samuel Turner',
        description: 'An adrenaline-fueled adventure that follows a group of explorers as they embark on a perilous journey to the uncharted depths of the Amazon rainforest. Ancient mysteries, dangerous creatures, and the fight for survival await them in the last frontier.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Contemporary Fiction'
    ),
    Book(
        title: 'The Mind\'s Eye',
        author: 'Jessica Williams',
        description: 'A psychological thriller that delves into the depths of the human mind. When a renowned psychiatrist is caught in a web of deception and intrigue, she must confront her own past and unravel the truth before it consumes her.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Crime'
    ),
    Book(
        title: 'The Chosen One',
        author: 'Daniel Thompson',
        description: 'A young adult fantasy novel following the journey of a teenager who discovers they are the chosen one destined to save their world from an ancient evil. With newfound powers and a group of unlikely allies, they must face their fears and fulfill their destiny.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Fantasy'
    ),
    Book(
        title: 'The Alchemist',
        author: 'Paulo Coelho',
        description: 'A philosophical novel about a young Andalusian shepherd who sets out on a journey to discover his personal legend. Along the way, he encounters wise mentors, magical experiences, and learns valuable lessons about following one\'s dreams.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Contemporary Fiction'
    ),
    Book(
        title: 'The Hunger Games',
        author: 'Suzanne Collins',
        description: 'A dystopian young adult novel set in a future where teenagers are forced to participate in a brutal televised game. Follow Katniss Everdeen as she becomes a symbol of rebellion and fights for survival against the oppressive regime.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Science Fiction'
    ),
    Book(
        title: 'The Catcher in the Rye',
        author: 'J.D. Salinger',
        description: 'A coming-of-age novel that follows the rebellious teenager Holden Caulfield as he navigates the complexities of adolescence and struggles with the phoniness of the adult world. A timeless exploration of teenage angst and alienation.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Contemporary Fiction'
    ),
    Book(
        title: 'The Da Vinci Code',
        author: 'Dan Brown',
        description: 'A fast-paced thriller that combines art, history, and secret societies. Join symbologist Robert Langdon as he unravels a mysterious code that leads to a shocking secret hidden for centuries.',
        imageUrl: 'assets/images/dune.jpg',
        genre: 'Crime'
    ),
    Book(
        title: 'The Girl on the Train',
        author: 'Paula Hawkins',
        description: 'A gripping psychological thriller centered around a woman who becomes entangled in a missing person investigation. As she tries to uncover the truth, she becomes a witness to a disturbing chain of events.',
        imageUrl: 'assets/images/girlontrain.jpg',
        genre: 'Mystery'
    ),
    Book(
        title: 'The Forgotten City',
        author: 'Julia Roberts',
        description: 'A captivating mystery set in a forgotten city buried beneath the desert sands. An archaeologist discovers an ancient artifact that holds the key to a lost civilization and the secrets of its downfall.',
        imageUrl: 'assets/images/midnightgarden.jpg',
        genre: 'Contemporary Fiction'
    ),

    // Add more books by genre here
  ];

  String? _selectedGenre; // Make _selectedGenre nullable

  List<Book> _filteredBooks = [];

  @override
  void initState() {
    super.initState();
    _filterBooksByGenre(null); // Initialize the filtered books with all books
  }

  void _filterBooksByGenre(String? genre) {
    setState(() {
      _selectedGenre = genre;
      if (genre == null) {
        _filteredBooks = List<Book>.from(_booksByGenre);
      } else {
        _filteredBooks =
            _booksByGenre.where((book) => book.genre == genre).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookVerse'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String?>(
              value: _selectedGenre,
              decoration: InputDecoration(
                labelText: 'Select Genre',
              ),
              onChanged: (String? value) => _filterBooksByGenre(value),
              items: [
                DropdownMenuItem<String>(
                  value: null,
                  child: const Text('All Genres'),
                ),
                DropdownMenuItem<String>(
                  value: 'Fantasy',
                  child: const Text('Fantasy'),
                ),
                DropdownMenuItem<String>(
                  value: 'Mystery',
                  child: const Text('Mystery'),
                ),
                DropdownMenuItem<String>(
                  value: 'Contemporary Fiction',
                  child: const Text('Contemporary Fiction'),
                ),
                DropdownMenuItem<String>(
                  value: 'Science Fiction',
                  child: const Text('Science Fiction'),
                ),
                DropdownMenuItem<String>(
                  value: 'Non-fiction',
                  child: const Text('Non-fiction'),
                ),
                // Add more genres here
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredBooks.length,
              itemBuilder: (context, index) {
                Book book = _filteredBooks[index];
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
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
