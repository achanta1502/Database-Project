<%-- 
    Document   : insertdata
    Created on : Sep 30, 2017, 1:24:39 PM
    Author     : achan
--%>

<%@page import="com.sun.xml.registry.uddi.bindings_v2_2.Phone"%>
<%@page import="com.book.Borrower"%>
<%@page import="com.book.dao.LibraryTransactionDao"%>
<%@page import="com.book.Borrower"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp</title>
    </head>
    
    <body>
        
        <%
            String phone=(request.getParameter("phone"));
            String lname=request.getParameter("lname");
            String fname=request.getParameter("fname");
            String address=request.getParameter("address");
            String Email=request.getParameter("email");
      Borrower br=new Borrower(fname,lname,address,phone,Email); 
        int i=new LibraryTransactionDao().createBorrowerRecord(br);
        if(i==1){
            out.print("inserted successfully");
        }else
        {
            out.print("registration failed as email or phone number exist already");
        }
       
        %>
       
    </body>
</html>
