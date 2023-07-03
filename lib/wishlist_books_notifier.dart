import 'package:flutter/foundation.dart';
import 'Book.dart';
import 'package:provider/provider.dart';

class WishlistBooksNotifier extends ChangeNotifier {
  Set<Book> wishlistBooks = {};

  void addToWishlist(Book book) {
    wishlistBooks.add(book);
    notifyListeners();
  }

  void removeFromWishlist(Book book) {
    wishlistBooks.remove(book);
    notifyListeners();
  }
}

