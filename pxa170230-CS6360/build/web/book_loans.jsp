<%-- 
    Document   : book_loans
    Created on : Oct 5, 2017, 7:16:14 PM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheckOut</title>
        <style type="text/css">
            body{
                background-image:url(checkin.jpg);
                    background-repeat: no-repeat;  
            background-position:50% -50%;
            
            }
            #title{color:orange;}
            #title1{color:green;}
        </style>
    </head>
    <body>
        
        <center>
            <h1><span id="title">Check</span> <span id="title1">Out</span></h1>
        <form action="book_loans_search.jsp" method="post" >
            Enter:<input name="book_id" type="text" placeholder="enter id or title or author"   />
            
            
            <input type="submit" value="search" />
        </form>
        </center>
    </body>
</html>
