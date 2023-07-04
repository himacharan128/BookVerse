import 'package:flutter/material.dart';
import 'book.dart';

class ShopScreen extends StatelessWidget {
  final List<Book> _books = [
    Book(
        title: 'The Silent Witness',
        author: 'Sarah Roberts',
        description: 'A thrilling crime novel that follows Detective Emma Johnson as she investigates a series of mysterious murders in a small town. As the body count rises, Emma must unravel the dark secrets and uncover the true identity of the silent witness.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '14.99'
    ),
    Book(
        title: 'The Lost Key',
        author: 'Michael Anderson',
        description: 'An action-packed adventure novel where protagonist John Parker embarks on a quest to find a hidden key that holds the secret to unlocking an ancient treasure. Along the way, he faces dangerous challenges and encounters unexpected allies and enemies.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '12.99'
    ),
    Book(
        title: 'Echoes of the Past',
        author: 'Jennifer Thompson',
        description: 'In this poignant historical fiction, Sarah Collins, a young woman haunted by her family\'s past, embarks on a journey of self-discovery. As she unravels the secrets of her ancestors, she uncovers a tale of love, sacrifice, and resilience.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '9.99'
    ),
    Book(
        title: 'Beyond the Horizon',
        author: 'David Mitchell',
        description: 'Set in a dystopian future, this gripping sci-fi novel follows the journey of a group of survivors as they navigate a post-apocalyptic world. Facing challenges and unknown dangers, they must find hope and a new beginning beyond the horizon.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '15.99'
    ),
    Book(
        title: 'The Enigma Code',
        author: 'Robert Thompson',
        description: 'A thrilling spy novel that takes place during World War II. Follow Agent James Anderson as he races against time to crack the enigma code, unraveling a web of intrigue, betrayal, and high-stakes espionage.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '11.99'
    ),
    Book(
        title: 'The Forbidden Scroll',
        author: 'Emily Collins',
        description: 'In a world of magic and mystery, young wizard Daniel discovers a forbidden scroll that holds dark secrets. As he delves deeper into its contents, he must confront ancient forces and make choices that will determine the fate of his world.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '13.99'
    ),
    Book(
        title: 'The Final Betrayal',
        author: 'Jonathan Stevens',
        description: 'A gripping political thriller that follows journalist Sarah Davis as she investigates a conspiracy at the highest levels of government. With her life on the line, she must expose the truth before it\'s too late.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '14.99'
    ),
    Book(
        title: 'The Last Frontier',
        author: 'Mark Johnson',
        description: 'An epic adventure set in the untamed wilderness of Alaska. Follow the journey of Jack Thompson, a seasoned explorer, as he braves the elements and faces unimaginable challenges in his quest to conquer the last frontier.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '16.99'
    ),
    Book(
        title: 'The Art of Deception',
        author: 'Sophia Davis',
        description: 'A gripping psychological thriller where nothing is as it seems. Protagonist Emma Watson finds herself caught in a web of lies and manipulation, questioning her own sanity as she tries to uncover the truth.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '10.99'
    ),
    Book(
        title: 'The Forgotten City',
        author: 'Alex Turner',
        description: 'In this captivating historical mystery, archaeologist Anna Thompson discovers an ancient city lost to time. As she uncovers its secrets, she must confront her own past and face the consequences of unearthing the forgotten city.',
        imageUrl: 'assets/images/dune.jpeg',
        price: '13.99'
    ),
    Book(
        title: 'The Shadow of Fear',
        author: 'Daniel Roberts',
        description: 'A gripping psychological thriller that follows protagonist Emily as she tries to escape a relentless stalker. With every move she makes, she becomes entangled in a twisted game of cat and mouse, where the line between reality and paranoia blurs.',
        imageUrl: 'https://example.com/images/book11.jpg',
        price: '12.99'
    ),
    Book(
        title: 'The Quantum Paradox',
        author: 'Christopher Adams',
        description: 'In this mind-bending science fiction novel, physicist David Foster discovers a way to travel between parallel universes. As he explores the infinite possibilities, he grapples with the consequences of his actions and the ethical dilemmas they present.',
        imageUrl: 'https://example.com/images/book12.jpg',
        price: '14.99'
    ),
    Book(
        title: 'The Shattered Mirror',
        author: 'Olivia Richards',
        description: 'A haunting tale of suspense and supernatural phenomena. Protagonist Lily Williams finds herself trapped in a world where mirrors reflect more than just her own image, and the line between reality and the other side blurs.',
        imageUrl: 'https://example.com/images/book13.jpg',
        price: '11.99'
    ),
    Book(
        title: 'The Crimson Rose',
        author: 'Michael Thompson',
        description: 'A sweeping historical romance set in 19th-century England. Follow the passionate love affair between Elizabeth Adams and William Harrison, as they overcome societal barriers and face heart-wrenching trials to be together.',
        imageUrl: 'https://example.com/images/book14.jpg',
        price: '15.99'
    ),
    Book(
        title: 'The Haunting Melody',
        author: 'Sarah Mitchell',
        description: 'A chilling supernatural thriller where music holds the power to open doors to the other side. Protagonist Rachel Collins must confront her dark past and unravel the mysteries of a cursed melody before it consumes her.',
        imageUrl: 'https://example.com/images/book15.jpg',
        price: '10.99'
    ),
    Book(
        title: 'The Codebreaker\'s Secret',
        author: 'Matthew Wilson',
        description: 'A gripping historical fiction that delves into the world of codebreakers during World War II. Protagonist Thomas Anderson, a brilliant mathematician, joins an elite team to crack an enemy code and change the course of the war.',
        imageUrl: 'https://example.com/images/book16.jpg',
        price: '12.99'
    ),
    Book(
        title: 'The Crystal Crown',
        author: 'Emma Turner',
        description: 'In a realm of magic and danger, Princess Amelia embarks on a quest to reclaim her stolen crown. With the help of a band of loyal companions, she faces mythical creatures and battles dark forces to restore balance and peace.',
        imageUrl: 'https://example.com/images/book17.jpg',
        price: '14.99'
    ),
    Book(
        title: 'The Vanishing Memory',
        author: 'James Roberts',
        description: 'A thought-provoking science fiction novel set in a future where memories can be digitally erased. Protagonist Alex Johnson uncovers a conspiracy that threatens to reshape society as he fights to protect his own memories and those of others.',
        imageUrl: 'https://example.com/images/book18.jpg',
        price: '11.99'
    ),
    Book(
        title: 'The Midnight Garden',
        author: 'Sophie Anderson',
        description: 'A whimsical fantasy adventure where young protagonist Lily discovers a secret garden that comes to life at midnight. With the help of magical creatures, she embarks on a journey of self-discovery and learns the power of imagination.',
        imageUrl: 'https://example.com/images/book19.jpg',
        price: '13.99'
    ),
    Book(
        title: 'The Broken Path',
        author: 'David Wilson',
        description: 'In a post-apocalyptic world, a lone survivor named Sarah must navigate a dangerous wasteland to find her family. Along the broken path, she encounters both allies and enemies, testing her strength and resolve.',
        imageUrl: 'https://example.com/images/book20.jpg',
        price: '12.99'
    )

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
            trailing: Text('\$${book.price}'), // Display the price
          );
        },
      ),
    );
  }
}
