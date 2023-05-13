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
		model.addAttribute("books", bookDao.findAll());
		return "home";
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
	
	@PostMapping("addBook.do")
	public ModelAndView addFilm(Book book, RedirectAttributes redir) {
		bookDao.createBook(book);
		redir.addFlashAttribute("book", book);
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:BookAdded.do");
		return model;
	}
	
	@RequestMapping("bookAdded.do")
	public String bookAdded(Model model, Book book) {
		return "book/singleBook";
	}
	
	@PostMapping("updateBook.do")
	public ModelAndView updateBook(@RequestParam("update") int id, Book book, RedirectAttributes redir) {
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
	public ModelAndView deleteBook(@RequestParam("delete") int id, Book book, RedirectAttributes redir) {
		ModelAndView model = new ModelAndView();
		boolean bookReallyDeleted = bookDao.deleteBookById(id);
		if ( bookReallyDeleted != true) {
			redir.addFlashAttribute("book", book);
		}
		model.setViewName("redirect:bookDeleted.do");
		return model;
	}
	
	@GetMapping("bookDeleted.do")
	public String bookDeleted(Model model, Book book) {
		return "book/bookDeleted";
	}
}
