package ru.jrintership.TestJRInternship.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ru.jrintership.TestJRInternship.controllers.formbeans.BookForm;
import ru.jrintership.TestJRInternship.model.Book;
import ru.jrintership.TestJRInternship.services.BookService;

import javax.validation.Valid;

/**
 * Created by Admin on 04.03.2018.
 */
@Controller
@RequestMapping("/books")
public class BookController {

    private BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String listBooks(Model model) {
        model.addAttribute("books", bookService.findAllBooks());
        return "books/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addBook(Model model) {
        BookForm bookForm = new BookForm();
        model.addAttribute("bookForm", bookForm);
        return "books/new";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String saveBook(@Valid @ModelAttribute("bookForm") BookForm bookForm, BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return "books/new";
        Book book = createBook(bookForm);
        bookService.saveBook(book);
        return "redirect:/books";
    }

    @RequestMapping(value = "/{bookId}/read", method = RequestMethod.GET)
    public String readBook(@PathVariable Integer bookId){
        Book book = bookService.findById(bookId);
        book.setReadAlready(true);
        bookService.updateBook(book);
        return "redirect:/books";
    }

    @RequestMapping(value = "/{bookId}/delete", method = RequestMethod.GET)
    public String deleteBook(@PathVariable Integer bookId){
        bookService.deleteBook(bookId);
        return "redirect:/books";
    }

    @RequestMapping(value = "/{bookId}/update", method = RequestMethod.GET)
    public String editBook(@PathVariable Integer bookId, Model model) {
        Book book = bookService.findById(bookId);
        book.setReadAlready(false);
        BookForm bookForm = new BookForm(book);
        model.addAttribute("bookForm", bookForm);
        model.addAttribute("bookId", bookId);
        return "books/edit";
    }

    @RequestMapping(value = "/{bookId}/update", method = RequestMethod.POST)
    public String updateBook(@Valid @ModelAttribute("bookForm") BookForm bookForm, @PathVariable Integer bookId, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors())
            return "books/edit";
        Book book = bookService.findById(bookId);
        updateBook(book, bookForm);
        bookService.updateBook(book);
        return "redirect:/books";
    }

    private Book createBook(BookForm bookForm) {
        Book book = new Book();
        updateBook(book, bookForm);
        return book;
    }

    private void updateBook(Book book,BookForm bookForm) {
        book.setTitle(bookForm.getTitle());
        book.setAuthor(bookForm.getAuthor());
        book.setDescription(bookForm.getDescription());
        book.setIsbn(bookForm.getIsbn());
        book.setPrintYear(bookForm.getPrintYear());
        book.setReadAlready(bookForm.getIsReadAlready());
    }

}
