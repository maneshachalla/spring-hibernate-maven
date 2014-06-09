package org.com.book.service;



import java.util.List;

import org.com.book.model.Book;

public interface BookService {
	
	public void addBook(Book book);
	public void updateBook(Book book);
	public Book getBookById(Integer bookId);
	public List<Book> listBooks();
	public void removeBook(Integer id);

}