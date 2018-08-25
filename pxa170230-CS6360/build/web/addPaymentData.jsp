<%-- 
    Document   : addPaymentData
    Created on : Oct 14, 2017, 12:23:00 AM
    Author     : achan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.book.Publisher"%>
<%@page import="com.book.Borrower"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Book"%>
<%@page import="com.book.Book_Loans"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <style type='text/css'>
            table,th,td{
                border:0.5px;
                border-style:dashed; 
            }
             #title{color:orange;}
            #title1{color:green;}
        </style>
    </head>
    <body>
        <center>
            <h1><span id="title">Payable</span> <span id="title1">Fines</span></h1>        
         
        <%
          
            ResultSet r=new LibraryTransactionDao().addPayment();
    %>
    <table cellpadding='5px'>
            <tr>
                <th>name</th>
                <th>card_no</th>
                <th>Total amount</th>
            </tr>
        <tr><%while(r.next()){%>
            <td><%out.println(r.getString("fname"));%></td>
            <td><%out.println(r.getString("card_no"));%></td>
            <td><%out.println(r.getString("total_amt"));%></td></tr>
        
<%}%>
</table></center>
<center>
<form action="paid.jsp" method="post">
    
    <p></p>
        Card No:<input type="text" id="card" name="card" placeholder="enter ID here" />
    <input type="submit" value="pay">
    </form>
    </center>
    </body>
</html>
