<%-- 
    Document   : insertdata
    Created on : Sep 30, 2017, 1:24:39 PM
    Author     : achan
--%>

<%@page import="com.book.Book_Loans"%>
<%@page import="com.book.Borrower"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Borrower"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan Data</title>
        <style type="text/css">
            table,th,td{
                border:0.5px;
                border-color: black;
                border-style:dotted;
            }
            #title{color:orange;}
            #title1{color:green;}
        </style>
    </head>
    
    <body>
        
        <%
            long a=Long.parseLong(request.getParameter("ID_Card"));
      Borrower br=new Borrower(a);
      Book_Loans bl=new Book_Loans(br);
        
         
        ResultSet r=new LibraryTransactionDao().retrieveBorrowerBooks(bl);%>
        <p align="center"><span id="title">Loan</span> <span id="title1">Data</span> </p></br>
            <table align="center">
                <tr><th>card no</th>
                <th>book id</th>
                <th>loan id</th>
                <th>Date out</th>
                <th>Due Date</th>
                <th>Return Date</th></tr><%while(r.next()){%>
                <tr><td><%out.println(r.getString("card_no"));%></td>
                    <td><%out.println(r.getString("book_id"));%></td>
            <td><%out.println(r.getString("loan_id"));%></td>
            <td><%out.println(r.getString("date_out"));%></td>
            <td><%out.println(r.getString("due_date"));%></td>
            <td><%if(r.getString("date_in")==null){out.println("not returned");}
            else{out.print(r.getDate("date_in"));}%></td></tr><%}
        %>
        </table>
        
        
    </body>
</html>
