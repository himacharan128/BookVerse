class Book {
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final String? genre;//not required optional
  final String? price;

  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    this.genre,
    this.price,
  });
}
