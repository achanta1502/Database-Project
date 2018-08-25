<%-- 
    Document   : FinesData1
    Created on : Oct 21, 2017, 2:27:43 PM
    Author     : achan
--%>
<%@page import="com.book.Publisher"%>
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
        <title>Fines</title>
        <style type="text/css">
            table,th,td{border:0.5px;
            border-style:dashed;}
            #title{color:orange;}
            #title1{color:green;}
        </style>
    </head>
    
    
        
        
        
       
        <%
            
            ResultSet r=new LibraryTransactionDao().FinesRecord();
            System.out.print("entered into jsp page");
             %>
             <center>
                 <h1><span id="title">Fine</span> <span id="title1">Details</span></h1>
                 <table cellpadding="5px">
                     <tr>
                         <th>Loan_id</th>
                         <th>fine_amt</th>
                         <th>book Status</th>
                     </tr>
                     <%while(r.next()){ %>
                 <tr>
                     <td><%out.print(r.getInt("loan_id"));%></td>
                 <%if(r.getString("date_in")!=null){%>
                     <td><%out.println(r.getFloat("fine1"));
                     int k=new LibraryTransactionDao().FinesRecordUpdate(r.getLong("loan_id"),r.getFloat("fine1"));
                 System.out.println(k);%></td>
                     <td><%if(k!=0){%><%out.print("Returned");%><%}
                 }
                 else{%></td>
                     <td><%out.print(r.getFloat("fine"));%></td>           
                      <td><%int k=new LibraryTransactionDao().FinesRecordUpdate(r.getLong("loan_id"),r.getFloat("fine"));
                      if(k!=0){out.print("Yet to Return");} %>
                <% }%>
                </td>
                 </tr>
                 
             <%}
        %>
      </table>
      </center>
        
    </body>
    </html>

