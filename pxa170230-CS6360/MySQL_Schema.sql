CREATE DATABASE LIBRARY;

CREATE TABLE LIBRARY.BOOK(
Book_Id CHAR(10) NOT NULL,
Title VARCHAR(30) NOT NULL,
PRIMARY KEY(Book_Id)
);


CREATE TABLE LIBRARY.BOOK_AUTHOR(
Book_Id CHAR(30) NOT NULL,
uthor_name VARCHAR(100) NOT NULL,
PRIMARY KEY(sBook_Id, sAuthor_name),
FOREIGN KEY (sBook_Id) REFERENCES BOOK (Book_Id)
);

CREATE TABLE LIBRARY.BORROWER(
Card_no INTEGER(20) NOT NULL AUTO_INCREMENT, 
Fname VARCHAR(15) NOT NULL, 
Lname VARCHAR(15) NOT NULL, 
Address VARCHAR(100) NOT NULL, 
Phone Varchar(20) NOT NULL, 
PRIMARY KEY(Card_no)
);

CREATE TABLE LIBRARY.BOOK_LOANS(	    
Loan_Id integer(10) NOT NULL auto_increment,
Book_Id CHAR(30) NOT NULL,
Card_no INTEGER(20) NOT NULL,
Date_out DATE NOT NULL,
Due_date DATE NOT NULL,
Date_in DATE NULL,
PRIMARY KEY(Loan_Id),
FOREIGN KEY (Book_Id) REFERENCES BOOK (Book_Id),
FOREIGN KEY (Card_no) REFERENCES BORROWER (Card_no)
);

CREATE TABLE LIBRARY.FINES(
loan_id integer(10) not null auto_increment,
fine_amt decimal(4,2) default 0.00,
paid tinyint default 0,
Primary Key(loan_id),
Foreign Key (loan_id) references book_loans(loan_id)
);
use library;
