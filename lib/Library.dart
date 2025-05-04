import 'package:friendly_project/Book.dart';

class Library {
  final List<Book> books = [];

  void addBook(Book book) => books.add(book);

  void borrowBook(String title) {
    for (Book book in books) {
      if (book.title == title) {
        book.isAvailable = false;
      }
    }
  }

  List<Book> getAvailableBooks() {
    return books.where((book) => book.isAvailable).toList();
  }

  void displayBooks(List<Book> books) {
    for (Book book in books) {
      print("Titre: ${book.title}, Auteur: ${book.author}, (Année: ${book.year})");
    }
  }

  Library operator +(Library other) {
    final combinedLibrary = Library();
    combinedLibrary.books.addAll([...books, ...other.books]);
    return combinedLibrary;
  }
}
