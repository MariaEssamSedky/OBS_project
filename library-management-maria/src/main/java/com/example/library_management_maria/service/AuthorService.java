package com.example.library_management_maria.service;

import com.example.library_management_maria.entity.Author;
import com.example.library_management_maria.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {

    @Autowired
    private AuthorRepository authorRepository;

    public List<Author> getAllAuthors() {
        return authorRepository.findAll();
    }

    public Author getAuthorById(Long id) {
        return authorRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Author not found with id " + id));
    }

    public Author addAuthor(Author author) {
        return authorRepository.save(author);
    }

    public Author updateAuthor(Long id, Author authorDetails) {
        Author existingAuthor = getAuthorById(id);
        existingAuthor.setName(authorDetails.getName());
        existingAuthor.setBio(authorDetails.getBio());
        return authorRepository.save(existingAuthor);
    }
    
    public void deleteAuthor(Long id) {
        
        throw new UnsupportedOperationException("Unimplemented method 'deleteAuthor'");
    }
}
