class Book {
    String title;
    String author;
    int year;
    bool isAvailable;

    Book({
        required this.title,
        required this.author,
        required this.year,
        required this.isAvailable,
    });
    
    Book.available({
        required this.title,
        required this.author,
        required this.year,
    }) : isAvailable = true;
}
