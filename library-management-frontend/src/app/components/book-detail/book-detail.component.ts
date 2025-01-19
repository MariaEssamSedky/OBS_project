import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute, Router, RouterModule } from '@angular/router';
import { BookService } from '../../services/book.service';
import { Book } from '../../models/book.model';

@Component({
  selector: 'app-book-detail',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterModule],
  templateUrl: './book-detail.component.html',
  styleUrls: ['./book-detail.component.css']
})
export class BookDetailComponent implements OnInit {
  book!: Book;

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private bookService: BookService
  ) {}

  async ngOnInit() {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    if (id) {
      this.book = await this.bookService.getBookById(id);
    }
  }

  async updateBook() {
    if (this.book.id) {
      try {
        await this.bookService.updateBook(this.book.id, this.book);
        alert('Book updated successfully!');
      } catch (error) {
        console.error('Update failed', error);
      }
    }
  }

  async deleteBook() {
    if (this.book.id && confirm('Delete this book?')) {
      try {
        await this.bookService.deleteBook(this.book.id);
        alert('Book deleted');
        this.router.navigate(['/books']);
      } catch (error) {
        console.error('Delete failed', error);
      }
    }
  }
}
