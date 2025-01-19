import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { BookService } from '../../services/book.service';
import { Book } from '../../models/book.model';
import { RouterModule } from '@angular/router'; 

@Component({
  selector: 'app-book-list',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterModule],
  templateUrl: './book-list.component.html',
  styleUrls: ['./book-list.component.css']
})
export class BookListComponent implements OnInit {
  books: Book[] = [];
  searchTerm = '';

  constructor(private bookService: BookService) {}

  async ngOnInit() {
    await this.loadBooks();
  }

  async loadBooks() {
    try {
      this.books = await this.bookService.getAllBooks();
      console.log(this.books);
    } catch (error) {
      console.error('Failed to load books', error);
    }
  }

  async deleteBook(id: number) {
    if (confirm('Are you sure you want to delete this book?')) {
      try {
        await this.bookService.deleteBook(id);
        alert('Book deleted successfully!');
        // Reload the list
        await this.loadBooks();
      } catch (error) {
        console.error('Failed to delete book', error);
      }
    }
  }

  async search() {
    if (!this.searchTerm.trim()) {
      // If empty, load all
      await this.loadBooks();
      return;
    }

    // Call the combined search
    this.books = await this.bookService.searchAll(this.searchTerm);
  }

  async addBook(): Promise<void> {
    const newBook: Book = {
      title: 'New Book Title',
      author: { name: 'New Author' },
      borrowed: false
    };

    try {
      const addedBook = await this.bookService.addBook(newBook);
      console.log('Book added successfully:', addedBook);
      this.books.push(addedBook); // Update the local book list
    } catch (error) {
      console.error('Error adding book:', error);
    }
  }

  isOverdue(book: Book): boolean {
    if (!book.borrowed || !book.borrowedDate) return false;
  
    const borrowedDate = new Date(book.borrowedDate);
    const now = new Date();
    // 30 days ago
    const oneMonthAgo = new Date(now);
    oneMonthAgo.setDate(oneMonthAgo.getDate() - 30);
  
    return borrowedDate < oneMonthAgo;
  }
  
}

