package com.book;

public class Borrower {
	private long cardNumber;
	private String lname;
	private String address;
	private String phone;
        private String fname;
        private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Borrower(String fname, String lname, String address, String phone, String email) {
        
        this.lname = lname;
        this.address = address;
        this.phone = phone;
        this.fname = fname;
        this.email = email;
    }
   

    public Borrower(String fname,String lname, String address, String phone) {
        this.lname = lname;
        this.address = address;
        this.phone = phone;
        this.fname = fname;
    }

    public Borrower(long cardNumber) {
        this.cardNumber = cardNumber;
    }

    public Borrower(long cardNumber, String lname, String fname) {
        this.cardNumber = cardNumber;
        this.lname = lname;
        this.fname = fname;
    }

    public Borrower(String phone, String email) {
        this.phone = phone;
        this.email = email;
    }

    @Override
    public String toString() {
        return "Borrower{" + "cardNumber=" + cardNumber + ", lname=" + lname + ", address=" + address + ", phone=" + phone + ", fname=" + fname + ", email=" + email + '}';
    }
    
    

    public long getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(long cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

}

    