/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.book;

/**
 *
 * @author achan
 */
public class Book_Loans {
    private Book book;
    private Borrower borrower;

    public Book_Loans(Book book, Borrower borrower) {
        this.book = book;
        this.borrower = borrower;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Borrower getBorrower() {
        return borrower;
    }

    public void setBorrower(Borrower borrower) {
        this.borrower = borrower;
    }

    public Book_Loans(Borrower borrower) {
        this.borrower = borrower;
    }
    
    @Override
    public String toString() {
        return "Book_Loans{" + "book=" + book + ", borrower=" + borrower + '}';
    }
    
}
