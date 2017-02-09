package com.manifestcorp.techreads.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;
import static org.springframework.web.bind.annotation.RequestMethod.DELETE;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import com.manifestcorp.techreads.model.Book;
import com.manifestcorp.techreads.repository.BookRepository;

@Controller
@RequestMapping("/books")
public class BookController {
	
	@Autowired
	BookRepository bookRepository;
	
	@RequestMapping({"","/"})
	
	public ModelAndView books() {
		ModelAndView mav = new ModelAndView("books");
		List<Book> books = bookRepository.findAll();
		mav.addObject("books", books);
		return mav;
	}
	
	@RequestMapping("/add")
	
	public String add(Model model){
		model.addAttribute("bookForm", new Book());
		return "add";
	}
	
	@RequestMapping("/view")
	
	public String view(Model model){
		model.addAttribute("bookForm", new Book());
		return "view";
	}
	
	@RequestMapping(value = {"", "/"}, method=POST)
	
	public RedirectView addBook(Book book) {
		bookRepository.saveAndFlush(book);
		return new RedirectView("/Techreads/books");
	}
	
	@RequestMapping(value = "/delete", method = POST)
	public RedirectView delete(@RequestParam("book") long bookId){
		Book book = bookRepository.getOne(bookId);
		bookRepository.delete(book);
		return new RedirectView("/Techreads/books");
	}
	
}