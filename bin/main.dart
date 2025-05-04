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

  print("\n");
  List<Book> availableBooks = library.getAvailableBooks();
  for(Book book in availableBooks) {
    print(book.title);
  }

  print("\n");
  library.displayBooks(availableBooks);

  Book book3 = Book.available(title: "1984", author: "George Orwell", year: 1949);
  Book book4 = Book.available(title: "Pride and Prejudice", author: "Jane Austen", year: 1813);
  
  Library library2 = Library();
  library2.addBook(book3);
  library2.addBook(book4);

  Library combinedLibrary = library + library2;
  print("\n");
  combinedLibrary.displayBooks(combinedLibrary.books);
  
}
