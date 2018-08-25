<%-- 
    Document   : index
    Created on : Sep 30, 2017, 1:20:00 PM
    Author     : achan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Library</title>
        <style type='text/css'>
            a{position:relative;
            height: 200px;
            width:100px;
            padding:10px;
            }
            
            #title{color:orange;}
            #title1{color:green;}
            #search{color:green;
                    background-color: honeydew;
            }
            #Loan{color:aquamarine;background-color: honeydew;
           }
            #BookLoan{color:orangered;background-color: honeydew;}
            #details{color:blue;background-color: honeydew;}
            #book_loans{color:red;background-color: honeydew;}
            #checkin{color:blueviolet;background-color: honeydew;}
            #fines{color:coral;background-color: honeydew;}
            #payment{color:violet;background-color: honeydew;}
            #end{
              bottom:10px;
               position: absolute;
            color:orange;}
            #end_middle{position:absolute;
                        bottom: 10px;
                        text-indent: 1250px;
                color:green;
            }
        </style>
    </head>
    <body>
        <center>
            <marquee behavior="alternate"><h1><img src="utd.jpg" height="45" width="45"><span id="title">Libr</span><span id="title1">ary</span></h1></marquee>
        <a href="search.jsp"><div id='search'>Search</div></a>
        <a href="id.jsp"><div id='Loan' />Loan details using ID</div></a>
        <a href="details.jsp"><div id='details' />enter new borrower details</div></a>
        <a href="book_loans.jsp"><div id="book_loans">Book_loans</div></a>
        <a href="checkin.jsp"><div id="checkin">Check In</div></a>
        <a href="Fines.jsp"><div id="fines">Fines</div></a>
        <a href="addPayment.jsp"><div id="payment">Payment Page</div></a>
        <div id="end">&COPY; Achanta pavan kumar Library Database-project 2017</div>
        <div id="end_middle">Under guidance of Prof.Chris Davis</div>
        </center>
    </body>
</html>
