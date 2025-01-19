import { Author } from './author.model';

export interface Book {
  id?: number;
  title: string;
  description?: string;
  borrowed?: boolean;
  borrowedDate?: string;  
  author?: Author;
  // imageUrl?: string; 
}
