package org.com.book.dao;



import java.util.List;

import org.com.book.model.Book;

public interface BookDao {
	public void addBook(Book book);
	public void updateBook(Book book);
	public List<Book> listBooks();
	public Book getBookById(Integer bookId);
	public void removeBook(Integer id);

}
