package com.skilldistillery.library.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.library.data.BookDAO;
import com.skilldistillery.library.entities.Book;

@Controller
public class BookController {

	@Autowired
	private BookDAO bookDao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		return "home";
	}

	@RequestMapping("allBooks.do")
	public String allBooks(Model model) {
		model.addAttribute("books", bookDao.findAll());
		return "book/allBooks";
	}
	
	@GetMapping("getBookById.do")
	public String getBookById(Model model, int id) {
		model.addAttribute("book", bookDao.findById(id));
		return "book/singleBook";
	}

	@GetMapping("getBookByKeyword.do")
	public String getBookByKeyword(Model model, String keyword) {
		model.addAttribute("books", bookDao.findByKeyword(keyword));
		return "book/multipleBooks";
	}
	
	@RequestMapping("newBook.do")
	public String newBook(Model model) {
		return "book/newBook";
	}
	
	@PostMapping("addBook.do")
	public ModelAndView addBook(Book book, RedirectAttributes redir) {
		bookDao.createBook(book);
		redir.addFlashAttribute("book", book);
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:bookAdded.do");
		return model;
	}
	
	@RequestMapping("bookAdded.do")
	public String bookAdded(Model model, Book book) {
		return "book/singleBook";
	}
	
	@RequestMapping("changeBook.do")
	public String changeBook(Model model, int id) {
		model.addAttribute("book", bookDao.findById(id));
		return "book/updateBook";
	}
	
	@PostMapping("updateBook.do")
	public ModelAndView updateBook(int id, Book book, RedirectAttributes redir) {
		bookDao.updateBook(id, book);
		redir.addFlashAttribute("book", book);
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:bookUpdated.do");
		return model;
	}
	
	@GetMapping("bookUpdated.do")
	public String bookUpdated(Model model, Book book) {
		return "book/singleBook";
	}
	
	@PostMapping("deleteBook.do")
	public ModelAndView deleteBook(int id, Book book, RedirectAttributes redir) {
		ModelAndView model = new ModelAndView();
		boolean wasBookReallyDeleted = bookDao.deleteBookById(id);
		redir.addFlashAttribute("wasBookReallyDeleted", wasBookReallyDeleted);
		model.setViewName("redirect:bookDeleted.do");
		return model;
	}
	
	@GetMapping("bookDeleted.do")
	public String bookDeleted(Model model, Book book) {
		return "book/bookDeleted";
	}
}
