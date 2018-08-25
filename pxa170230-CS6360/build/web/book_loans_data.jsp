<%-- 
    Document   : insertdata
    Created on : Sep 30, 2017, 1:24:39 PM
    Author     : achan
--%>

<%@page import="com.book.Publisher"%>
<%@page import="com.book.Borrower"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Book"%>
<%@page import="com.book.Book_Loans"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JCheckOut</title>
    </head>
    <body>
      
        
       
        <%
        
//         String a=request.getParameter("td1");   
//         System.out.println(a);
//         out.println(a);
//         session.setAttribute("book_id", a);
            
            String a=request.getParameter("but").toString();
            session.setAttribute("id",a);
        %>
        
        <center>
        <form action="book_loans_data1.jsp" method="post">
            
            Card No:<input type="number" placeholder="enter id here in numbers" name="id"/>
            
            
           
        <input type="submit" /></form>
        </center>
    </body>
    </html>

