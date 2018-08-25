<%-- 
    Document   : paid
    Created on : Oct 14, 2017, 12:59:14 AM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.book.Publisher"%>
<%@page import="com.book.Borrower"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Book"%>
<%@page import="com.book.Book_Loans"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paid</title>
    </head>
    <body>
        <% 
          Borrower b=new Borrower(Long.valueOf(request.getParameter("card")));
          int k=new LibraryTransactionDao(). paid(b);
          if(k!=0){
              out.println("amount paid");
          }else{out.print("books need to return to pay or paid the amount already");}
        %>
    </body>
</html>
