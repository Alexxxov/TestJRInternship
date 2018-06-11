package ru.jrintership.TestJRInternship.controllers.formbeans;

import ru.jrintership.TestJRInternship.model.Book;

import javax.validation.constraints.NotBlank;

/**
 * Created by Admin on 19.03.2018.
 */
public class BookForm {

    @NotBlank
    private String title;

    @NotBlank
    private String description;

    @NotBlank
    private String author;

    @NotBlank
    private String isbn;

    private int printYear;

    private boolean isReadAlready;

    public BookForm(){

    }

    public BookForm(Book book) {
        this.title = book.getTitle() != null ? book.getTitle() : null;
        this.description = book.getDescription();
        this.author = book.getAuthor();
        this.isbn = book.getIsbn();
        this.printYear = book.getPrintYear();
        this.isReadAlready = book.getIsReadAlready();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getPrintYear() {
        return printYear;
    }

    public void setPrintYear(int printYear) {
        this.printYear = printYear;
    }

    public boolean getIsReadAlready() {
        return isReadAlready;
    }

    public void setReadAlready(boolean readAlready) {
        isReadAlready = readAlready;
    }
}
