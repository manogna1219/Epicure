<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME USER</title>
</head>
<style>
body {
        background:url("DARK.png");
         height: 100%;
         background-position: center;
         background-size: cover;
         position: relative;
        font-family: $font-family;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 400px;
        height: 600px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
     .sign {
        padding-top: 40px;
        color: #000000;
        font-family: $font-family;
        font-weight: bold;
        font-size: 23px;
    }
  

    .un {
    width: 76%;
    color:#FFFFFF;
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background:#ff3300;
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family:$font-family;
    cursor:pointer
    }
    
   form.form1 {
        padding-top: 40px;
    }

 .un:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;        
    }
</style>
<body>
<%
String name=session.getAttribute("nkey").toString();

%>


 <div>
 <div class="main">
    <p class="sign" align="center">WELCOME <%=name%>!</p>
    <form class="form1">
 <a href="viewprofile.jsp"><button type=button class="un">My profile</button></a><br>
 <a href="hotels.jsp"><button type=button class="un">Hotels</button></a><br>
 <a href="specialdish.jsp"><button type=button class="un">Search by SPECIAL DISH</button></a><br>
 <a href="budget.jsp"><button type=button class="un">Search by Budget</button></a><br>
 <a href="confirm.jsp"><button type=button class="un">Order Confirmation</button></a><br>
 <a href="login.html"><button type=button class="un">LOGOUT</button></a> 
 </form>
 </div>
 </div>
</body>
</html>




