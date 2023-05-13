package com.skilldistillery.library.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.library.entities.Book;

@Service
@Transactional
public class BookDaoImpl implements BookDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Book> findAll() {
		String jpql = "SELECT b FROM Book b";
		return em.createQuery(jpql, Book.class).getResultList();
	}

	@Override
	public Book findById(int bookId) {
		return em.find(Book.class, bookId);
	}

	@Override
	public List<Book> findByKeyword(String keyword) {
		String jpql = "SELECT b FROM Book b WHERE b.title LIKE :word OR b.synopsis LIKE :word";
		List<Book> foundBooks = em.createQuery(jpql, Book.class)
				.setParameter("word", "%" + keyword + "%")
				.getResultList();
		if (foundBooks != null) {
			return foundBooks;
		} else {
			return null;
		}
	}

	@Override
	public Book createBook(Book book) {
		em.persist(book);
		em.flush();
		return book;
	}

	@Override
	public Book updateBook(int bookId, Book book) {
		Book managedBook = em.find(Book.class, bookId);
		managedBook.setTitle(book.getTitle());
		managedBook.setAuthorFirstName(book.getAuthorFirstName());
		managedBook.setAuthorLastName(book.getAuthorLastName());
		managedBook.setPublishYear(book.getPublishYear());
		managedBook.setPublisher(book.getPublisher());
		managedBook.setSeries(book.getSeries());
		managedBook.setOccurrenceInSeries(book.getOccurrenceInSeries());
		managedBook.setMedium(book.getMedium());
		managedBook.setNumberOfPages(book.getNumberOfPages());
		//	NEED TO FINISH ADDING FIELDS
		em.flush();
		return managedBook;
	}

	@Override
	public boolean deleteBookById(int bookId) {
		Book toBeDeleted = em.find(Book.class, bookId);
		em.remove(toBeDeleted);
		em.flush();
		if (!em.contains(toBeDeleted)) {
			return true;
		} else {
			return false;
		}
	}

}
