package com.example.library_management_maria.controller;
import com.example.library_management_maria.entity.Author;
import com.example.library_management_maria.entity.Book;
import com.example.library_management_maria.repository.AuthorRepository;
import com.example.library_management_maria.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/books")
@CrossOrigin(origins = "*") 
public class BookController {

    @Autowired
    private BookService bookService;

    @Autowired
    private AuthorRepository authorRepository;

    @GetMapping
    public List<Book> getAllBooks() {
        return bookService.getAllBooks();
    }

    @GetMapping("/{id}")
    public Book getBookById(@PathVariable Long id) {
        return bookService.getBookById(id);
    }

   

    @GetMapping("/author/{authorId}")
    public List<Book> getBooksByAuthor(@PathVariable Long authorId) {
        return bookService.getBooksByAuthor(authorId);
    }


    @PutMapping("/{id}")
    public Book updateBook(@PathVariable Long id, @RequestBody Book book) {
        return bookService.updateBook(id, book);
    }

    @DeleteMapping("/{id}")
    public void deleteBook(@PathVariable Long id) {
        bookService.deleteBook(id);
    }

    @GetMapping("/search")
    public List<Book> searchBooks(@RequestParam String query) {
    return bookService.searchBooksByTitleOrAuthor(query);
}

@PostMapping
public Book addBook(@RequestBody Book book) {
    Author incomingAuthor = book.getAuthor();
    if (incomingAuthor != null) {
        Long authorId = incomingAuthor.getId();
        String authorName = incomingAuthor.getName();

        if (authorId != null) {
            Optional<Author> existingAuthor = authorRepository.findById(authorId);

            if (existingAuthor.isPresent()) {
                book.setAuthor(existingAuthor.get());

            } else {
                Author savedAuthor = authorRepository.save(incomingAuthor);
                book.setAuthor(savedAuthor);
            }

        } else {

            if (authorName != null && !authorName.isBlank()) {
                Optional<Author> existingByName = authorRepository.findByName(authorName);
                if (existingByName.isPresent()) {
                    book.setAuthor(existingByName.get());
                } else {
                    Author newAuthor = authorRepository.save(incomingAuthor);
                    book.setAuthor(newAuthor);
                }

            } else {
                
                Author newAuthor = authorRepository.save(incomingAuthor);
                book.setAuthor(newAuthor);
            }
        }
    }
    
    return bookService.addBook(book);
}

    @GetMapping("/overdue")
    public List<Book> getOverdueBooks() {
        return bookService.getOverdueBooks();
    }
 
    
}
