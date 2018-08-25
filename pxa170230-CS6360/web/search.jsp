<%-- 
    Document   : search
    Created on : Sep 30, 2017, 1:20:00 PM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <style type="text/css">
            body{
                background-image:url(library.jpg);
                    background-repeat: no-repeat;  
                    padding-left: 1000px;
            }
        </style>
    </head>
    <body>
        <form action="insertdata1.jsp" method="POST">
            
            Search<input type="text" id="ID" name="ID" placeholder="enter ID or title or author name" id='2'>
                        
            
            <input type="submit" />
        </form>
    </body>
</html>
