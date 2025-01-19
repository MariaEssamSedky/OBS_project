import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { BookService } from '../../services/book.service';
import { Book } from '../../models/book.model';

@Component({
  selector: 'app-book-form',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './book-form.component.html',
  styleUrls: ['./book-form.component.css']
})
export class BookFormComponent {
  book: Book = {
    title: '',
    description: '',
    borrowed: false,
    author: {
      id: undefined,
      name: '',
      bio: '',
    }
  };

  constructor(private bookService: BookService, private router: Router) {}

  async saveBook() {
    try {
      await this.bookService.addBook(this.book);
      alert('Book added successfully!');
      this.router.navigate(['/books']);
    } catch (error) {
      console.error('Add failed', error);
    }
  }
}
