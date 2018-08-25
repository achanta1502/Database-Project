<%-- 
    Document   : checkinData
    Created on : Oct 14, 2017, 2:13:58 AM
    Author     : achan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.book.Publisher"%>
<%@page import="com.book.Borrower"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Book"%>
<%@page import="com.book.Book_Loans"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            table,th,td{
                border:0.5px;
                border-style:dashed;
            }
            #title{color:orange;}
            #title1{color:green;}
        </style>
    </head>
    <body>
        <% String a=request.getParameter("search");
    ResultSet r=new LibraryTransactionDao().checkin(a); 
    %>
    <center>
        <h1><span id="title">Loan</span> <span id="title1">Books</span></h1>
    <table cellpadding="5px">
        <tr>
            <th>select</th>
            <th>book_id</th>
            <th>card_no</th>
            <th>name</th>
        </tr>
        <% while(r.next()){if(r.getString("date_in")==null){%><tr>
            <td><form action="checked.jsp" method="post"><input type="radio" id="but" name="but" value="<%out.print(r.getString("book_id"));
            %>" onclick="this.form.submit()"/><input type="hidden" name="card" value="<%out.print(r.getString("card_no"));%>" /></form></td>
           <td><%out.print(r.getString("book_id"));%></td>
           <td><%out.print(r.getString("card_no"));%></td>
           <td><%out.print(r.getString("name"));%></td> 
            </tr>
<%}}%>
</table>
<!--<form action="checked.jsp" method="post">
    Card No:<input type="text" name="card_no" placeholder="enter id here"/>
    Book Id:<input type="text" name="book_id" placeholder="enter Book Id"/>
    <input type="submit" value="checkin"/>
</form>-->
</center>
    </body>
</html>
