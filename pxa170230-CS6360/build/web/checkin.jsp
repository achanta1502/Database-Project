<%-- 
    Document   : checkin
    Created on : Oct 14, 2017, 1:59:28 AM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkin</title>
        <style type="text/css">
            body{
                background-image:url(checkout.jpg);
                    background-repeat: no-repeat;  
            background-position:50% -50%;
            }
        </style>
    </head>
    <body>
        
        <form action="checkinData.jsp" method="post">
            Search:<input type="text" id="search" name="search" placeholder="enter id or name" />
            <input type="submit" value="checkin">
        </form>
    </body>
</html>
