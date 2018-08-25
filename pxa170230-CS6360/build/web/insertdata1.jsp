<%-- 
    Document   : insertdata1
    Created on : Oct 22, 2017, 10:44:55 PM
    Author     : achan
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Publisher"%>
<%@page import="com.book.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <style type="text/css">
            
            table,th,td{
                height:10px;
                border: 0.5px;
                border-color: black;
                border-style: dotted;
            }
        </style>
    </head>
    
    <body>
        
        <%
       Publisher pb=new Publisher(request.getParameter("ID"));
        
        String a=(request.getParameter("ID"));
         Book ba=new Book(a,request.getParameter("ID"),pb);
        ResultSet r=new LibraryTransactionDao().retrieveBooksOnId1(ba);     
        Statement st2=new LibraryTransactionDao().getConnection().createStatement();
        Statement st3=new LibraryTransactionDao().getConnection().createStatement();
        String name=" ";
        %>
        <h3 align="center">Search data </h3></br>
            <table align="center">
                <tr><th>book id</th>
                <th>title</th>
                <th>author name</th>
                <th>availability</th>
                </tr>
                <%while(r.next()){%>
                <tr><td><%out.println(r.getString("isbn"));%></td>
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
            
        
    </body>
</html>

