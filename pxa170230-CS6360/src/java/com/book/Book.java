package com.book;

import java.util.Date;

public class Book {

    private String id;
    private String title;
    private Publisher publisher;
    private String authorName;
    private int numberOfCopies;
    private Date dueDate;
    private Borrower borrower;
    private Branch branch;

    public Book(String id, String title, Publisher publisher) {
        this.id = id;
        this.title = title;
        this.publisher = publisher;
    }

    public Book(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public int getNumberOfCopies() {
        return numberOfCopies;
    }

    public void setNumberOfCopies(int numberOfCopies) {
        this.numberOfCopies = numberOfCopies;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }

    public Borrower getBorrower() {
        return borrower;
    }

    public void setBorrower(Borrower borrower) {
        this.borrower = borrower;
    }

    public Branch getBranch() {
        return branch;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }

    @Override
    public String toString() {
        return "Book [id=" + id + ", title=" + title + ", publisher=" + publisher + ", authorName=" + authorName
                + ", numberOfCopies=" + numberOfCopies + ", dueDate=" + dueDate + ", borrower=" + borrower + ", branch="
                + branch + "]";
    }

}
