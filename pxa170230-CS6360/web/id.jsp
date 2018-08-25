<%-- 
    Document   : id
    Created on : Oct 3, 2017, 1:52:33 AM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID</title>
    </head>
    <body>

        <form action="idData.jsp" method="post">
            ID Card<input type="number" name="ID_Card" id="card"  placeholder="enter id number here" maxlength="10" />
            <input type="submit" value="search" onclick="return validate()"/>
            </form>
    </body>
</html>
