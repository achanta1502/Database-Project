<%-- 
    Document   : checked
    Created on : Oct 14, 2017, 6:14:44 PM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.book.*"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checked</title>
    </head>
    <body>
        <%  Book b=new Book(request.getParameter("but"));
         Borrower bo=new Borrower(Long.valueOf(request.getParameter("card"))); 
        Book_Loans bl=new Book_Loans(b,bo);
int k=new LibraryTransactionDao().checked(bl);
if(k==1){
    out.print("updated");
}
      
        %>
        <form action=""></form>
    </body>
</html>
