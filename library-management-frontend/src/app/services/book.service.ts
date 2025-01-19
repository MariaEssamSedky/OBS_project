// src/app/services/book.service.ts

import { Injectable } from '@angular/core';
import { Book } from '../models/book.model';

@Injectable({ providedIn: 'root' })
export class BookService {
  private baseUrl = 'http://localhost:8080/api/books';


  async getAllBooks(): Promise<Book[]> {
    const response = await fetch(this.baseUrl);
    return await response.json();
  }


  async getBookById(id: number): Promise<Book> {
    const response = await fetch(`${this.baseUrl}/${id}`);
    return await response.json();
  }


  async searchBooks(title: string): Promise<Book[]> {
    const response = await fetch(`${this.baseUrl}/search?title=${title}`);
    return await response.json();
  }


  async addBook(book: Book): Promise<Book> {
    const response = await fetch(this.baseUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(book)
    });
    if (!response.ok) {
        throw new Error('Failed to add book');
      }
    return await response.json();
  }


  async updateBook(id: number, book: Book): Promise<Book> {
    const response = await fetch(`${this.baseUrl}/${id}`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(book)
    });
    return await response.json();
  }


  async deleteBook(id: number): Promise<void> {
    await fetch(`${this.baseUrl}/${id}`, {
      method: 'DELETE'
    });
  }


  async getOverdueBooks(): Promise<Book[]> {
    const response = await fetch(`${this.baseUrl}/overdue`);
    return await response.json();
  }
  
  
  async searchAll(query: string): Promise<Book[]> {
    const url = `${this.baseUrl}/search?query=${encodeURIComponent(query)}`;
    const response = await fetch(url);
    return await response.json();
  }
  
}
