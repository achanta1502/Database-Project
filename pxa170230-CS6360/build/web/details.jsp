<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>h3{color:green;
          text-decoration:windowframe;}
          
            body{
                background-image:url(borower.jpg);
                    background-repeat: no-repeat;  
            background-position:50% -20%;
            }
        
            </style>
        <title>borrower details</title>
        
    </head>
    <body>
        <script type="text/javascript">
            function validate(){
                var fname=document.getElementById("fname").value;
                var lname=document.getElementById("lname").value;
                var address=document.getElementById("address").value;
                var phone=document.getElementById("phone").value;
                var email=document.getElementById("email").value;
                var state=document.getElementById("state").value;
                var city=document.getElementById("city").value;
                if(fname=="" || lname=="" || address=="" || phone=="" || email=="" || state=="" || city==""){
                    alert("enter all the fields");
                    return false;
                }else if(phone.length!=10){
                    alert("length of phone numbe should be 10");
                    return false;
                }
            
                else {return true;}
            }
        </script>
        <form action="detailsdata.jsp" method="post" onsubmit="return validate()">
            <h3>enter borrower details here</h3>
            First Name<input type="text" id="fname" name="fname" placeholder="enter your first name" />
            Last Name:<input type="text" id="lname" name="lname" placeholder="enter your last name" />
            Address:<input type="text" id="address" name="address" placeholder="address"/>
            City:<input type="text" name="city" placeholder="enter city here">
            State:<input type="text" name="state" placeholder="state">
            phone:<input type="text" id="phone" name="phone" placeholder="enter your phone number" maxlength="10"/>
            Email:<input type="text" id="email" name="email" placeholder="Enter Email ID"/>
            <input type="submit" value="sign up" >
        </form>
    </body>
</html>