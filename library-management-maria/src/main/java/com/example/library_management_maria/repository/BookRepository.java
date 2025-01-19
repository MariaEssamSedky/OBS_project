package com.example.library_management_maria.repository;

import com.example.library_management_maria.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {


    List<Book> findByTitleContainingIgnoreCase(String title);

    List<Book> findByAuthorId(Long authorId);
    
    @Query("SELECT b FROM Book b " +
       "WHERE LOWER(b.title) LIKE LOWER(CONCAT('%', :query, '%')) " +
       "OR LOWER(b.author.name) LIKE LOWER(CONCAT('%', :query, '%'))")
List<Book> findByTitleOrAuthorName(@Param("query") String query);

    
}
