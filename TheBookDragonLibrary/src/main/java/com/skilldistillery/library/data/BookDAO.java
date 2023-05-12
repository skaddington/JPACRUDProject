package com.skilldistillery.library.data;

import java.util.List;

import com.skilldistillery.library.entities.Book;

public interface BookDAO {
	
	Book findById(int bookId);
	
	List<Book> findAll();
	
	Book create(Book book);
	
	Book update(int bookId, Book book);
	
	boolean deleteById(int bookId);

}
