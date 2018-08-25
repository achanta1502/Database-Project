        <%-- 
    Document   : insertdata
    Created on : Sep 30, 2017, 1:24:39 PM
    Author     : achan
--%>

<%@page import="com.book.Borrower"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Book"%>
<%@page import="com.book.Book_Loans"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheckedOut</title>
    </head>
        <%
        
             
//         Borrower br=new Borrower(k);
           
         
         String id=request.getParameter("id");
          
          String book_id=session.getAttribute("id").toString();
          
         Book bk=new Book(book_id);
     Borrower br=new Borrower(Long.valueOf(id));
         Book_Loans bl=new Book_Loans(bk,br);
        int r=new LibraryTransactionDao().insertBookLoans(bl);
       
        if(r==1){
            out.print("inserted succefully");
        }else if(r==0){
            out.print("user loan books are exceeded or book is not available");
        }

        %>
        
        
       
    </body>
    </html>

