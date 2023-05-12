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
	public Book findById(int bookId) {
		return em.find(Book.class, bookId);
	}

	@Override
	public List<Book> findAll() {
		String jpql = "SELECT b FROM Book b";
		return em.createQuery(jpql, Book.class).getResultList();
	}

	@Override
	public Book create(Book book) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Book update(int bookId, Book book) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int bookId) {
		// TODO Auto-generated method stub
		return false;
	}

}
