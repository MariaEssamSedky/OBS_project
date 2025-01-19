package com.example.library_management_maria.service;

// import com.example.library_management_maria.entity.Author;
import com.example.library_management_maria.entity.Book;
// import com.example.library_management_maria.repository.AuthorRepository;
import com.example.library_management_maria.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    public Book getBookById(Long id) {
        return bookRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Book not found with id " + id));
    }

    public List<Book> searchBooks(String title) {
        return bookRepository.findByTitleContainingIgnoreCase(title);
    }

    public List<Book> getBooksByAuthor(Long authorId) {
        return bookRepository.findByAuthorId(authorId);
    }

    public Book addBook(Book book) {
        return bookRepository.save(book);
    }

    public Book updateBook(Long id, Book bookDetails) {
        Book existingBook = getBookById(id);
        existingBook.setTitle(bookDetails.getTitle());
        existingBook.setDescription(bookDetails.getDescription());
        existingBook.setBorrowed(bookDetails.isBorrowed());
        existingBook.setBorrowedDate(bookDetails.getBorrowedDate());
        existingBook.setAuthor(bookDetails.getAuthor());
        return bookRepository.save(existingBook);
    }

    public List<Book> searchBooksByTitleOrAuthor(String query) {
        return bookRepository.findByTitleOrAuthorName(query);
    }
    

    public void deleteBook(Long bookId) {
    
    // Book book = getBookById(bookId);
    // Author authoruthor = book.getAuthor();

    bookRepository.deleteById(bookId);

    // if (author != null) {
    //     List<Book> remainingBooks = bookRepository.findByAuthorId(author.getId());
    //     if (remainingBooks == null || remainingBooks.isEmpty()) {
    //         
    //         AuthorService.deleteAuthor(author);
    //     }
    // }
}


    
    public List<Book> getOverdueBooks() {
        LocalDate oneMonthAgo = LocalDate.now().minusMonths(1);
        return bookRepository.findAll().stream()
                .filter(book -> book.isBorrowed() &&
                        book.getBorrowedDate() != null &&
                        book.getBorrowedDate().isBefore(oneMonthAgo))
                .toList();
    }
}
