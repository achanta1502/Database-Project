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
        <script type="text/javascript">
            function validate(){
              window.location.href="addPaymentData.jsp";
            }
            function validate1(){
                window.location.href="addPaymentData1.jsp";
            }
        </script>
        <style type="text/css">
            body{
                background-image:url(payment.jpg);
                    background-repeat: no-repeat;  
            background-position:50% -50%;
            }
        </style>
    </head>
    <body>
        
    <center><form action="" method="post">
        <input type="button" value="show fines" name="fines" onclick="validate()"/>
        <input type="button" value="paid fines" name="paidfines" onclick="validate1()"/>
        </form></center>
    </body>
</html>
