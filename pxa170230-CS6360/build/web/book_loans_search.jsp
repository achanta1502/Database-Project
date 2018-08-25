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
<%@page import="java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out</title>
        <style type="text/css">
            table,td,th{border:0.5px;
            border-color:black;
            border-style:dashed;
            }
            #title{color:orange;}
            #title1{color:green;}
        </style>
    </head>
    
    <body>
        <%
            String b=(request.getParameter("book_id"));
            Publisher pb=new Publisher(b);
            Book bk=new Book(b,b,pb);
           ResultSet r=new LibraryTransactionDao().retrieveBooksOnId1(bk);   
String name="";
Statement st2=new LibraryTransactionDao().getConnection().createStatement();
        Statement st3=new LibraryTransactionDao().getConnection().createStatement();
        %>
    <center> <h1><span id="title">Books</span> <span id="title1">Data</span></h1>
        <table  cellpadding="5px" > 
            <tr>
                <th>select</th>
                <th>Book Id</th>
                <th>Title</th>
                <th>Author</th>
            </tr>
            <%while(r.next()){
               %>
            <tr>
                <td><form action="book_loans_data.jsp" method="post"><input type="radio" id="but" name="but" value="<%out.print(r.getString("isbn"));
                            %>" onclick="this.form.submit()"/></form></td>
                <td><%out.println(r.getString("isbn"));%></td>
                    <td><%out.println(r.getString("title"));%></td>
                    <% ResultSet r1=st2.executeQuery("select distinct author_id from book_authors where isbn='"+r.getString("isbn")+"';");
                    name="";
                     while(r1.next()){
                        ResultSet r2=st3.executeQuery("select distinct name from authors where author_id='"+r1.getString("author_id")+"';");
                        
                        while(r2.next()){
                            name=name+r2.getString("name")+",";  
                        }
}
%>
            <td><%out.println(name);%></td>
            <td><%
                if(r.getString("date_out")==null || (r.getString("date_in")!=null && r.getString("date_out")!=null)){out.println("available");
            }else{
                out.println("not available");
            }%></td></tr>
            <%}
       
         %>
        </table>    
        </center>
    </body>
</html>
