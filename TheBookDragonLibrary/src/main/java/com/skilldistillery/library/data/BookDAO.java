package com.skilldistillery.library.data;

import java.util.List;

import com.skilldistillery.library.entities.Book;

public interface BookDAO {
	
	List<Book> findAll();
	
	Book findById(int bookId);
	
	List<Book> findByKeyword(String keyword);
	
	Book createBook(Book book);
	
	Book updateBook(int bookId, Book book);
	
	boolean deleteBookById(int bookId);

}
