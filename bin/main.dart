import 'package:friendly_project/Book.dart';
import 'package:friendly_project/Library.dart';
void main() {
  Book book1 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925, isAvailable: false);
  Book book2 = Book.available(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960);

  print(book1.isAvailable);
  print(book2.isAvailable);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);

  List<Book> availableBooks = library.getAvailableBooks();
  for(Book book in availableBooks) {
    print(book.title);
  }
}
