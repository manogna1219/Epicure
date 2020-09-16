
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
        background:url("ma.jpg");
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
<div>
 <div class="main">
    <p class="sign" align="center">WELCOME ADMIN!</p>
    <form class="form1">
<a href="viewusers.jsp"><button type= button class="un">View all customers</button></a><br>
<a href="hotelregister.html"><button type= button class="un">add hotels</button></a><br>
<a href="viewhotels.jsp"><button type= button  class="un">update hotel items</button></a><br>
<a href="viewitems.jsp"><button type= button  class="un">view all items</button></a><br>
<a href="index.html"><button type= button  class="un">logout</button></a><br>
</form>
</div>
 </div>


</body>
</html>