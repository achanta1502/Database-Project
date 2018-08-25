<%-- 
    Document   : Fines
    Created on : Oct 9, 2017, 10:44:33 PM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fines</title>
        <style type="text/css">
            body{
                background-image:url(fines.jpg);
                    background-repeat: no-repeat;  
            background-position:50% -100%;
            }
        </style>
    </head>
    <body>
    <center>
        <form action="FinesData1.jsp" method="post">
            <input type="submit" name="all" value="show all fines" /></br>
            </form>
            <p>OR</p>   
            <form action="FinesData.jsp" method="post">
        Card No:<input type="number" id="number" name="number" placeholder="enter card no here"/>
        <input type="submit" value="get fines"/>
        </form></center>
    </body>
</html>
