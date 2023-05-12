package com.skilldistillery.library.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.library.data.BookDAO;

@Controller
public class BookController {

	@Autowired
	private BookDAO bookDao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("bookList", bookDao.findAll());
		return "home";
	}
}
