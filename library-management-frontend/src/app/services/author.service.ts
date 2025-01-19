import { Injectable } from '@angular/core';
import { Author } from '../models/author.model';

@Injectable({ providedIn: 'root' })
export class AuthorService {
  private baseUrl = 'http://localhost:8080/api/authors';

  async getAllAuthors(): Promise<Author[]> {
    const response = await fetch(this.baseUrl);
    return await response.json();
  }

  async getAuthorById(id: number): Promise<Author> {
    const response = await fetch(`${this.baseUrl}/${id}`);
    return await response.json();
  }

  async addAuthor(author: Author): Promise<Author> {
    const response = await fetch(this.baseUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(author)
    });
    return await response.json();
  }

  async updateAuthor(id: number, author: Author): Promise<Author> {
    const response = await fetch(`${this.baseUrl}/${id}`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(author)
    });
    return await response.json();
  }

  async deleteAuthor(id: number): Promise<void> {
    await fetch(`${this.baseUrl}/${id}`, { method: 'DELETE' });
  }
}
