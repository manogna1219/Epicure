<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}

.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image:url("c.jpg") ;
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
}

.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: #5379fa !important;
}

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 350px;
	height: 60px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=fix]{
	width: 350px;
	height: 60px;
	background: #000000;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #ff3300;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}


.login input[type=button]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}


.btn {
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background:#ff0033 ;
        border: 0;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: $font-family;
        margin-left: 35%;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }

.login input[type=button]:hover{
	opacity: 0.8;
}

.login input[type=button]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}



.login input[type=button]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}

</style>

<%
String hotel=request.getParameter("h");
String specialdish=request.getParameter("sdish");
String dishcost=request.getParameter("dc");
String customer=session.getAttribute("nkey").toString();
%>


<form action="specialdishorder.jsp">


<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>EPI<span>CURE</span></div>
		</div>
		<br>
		<div class="login">
	 <input type="fix" placeholder="Hotel" name="h" value="<%=hotel%>" readonly><br>
      <input type="fix" placeholder="SpecialDish" name="sdish" value="<%=specialdish%>" readonly><br>
      <input type="fix" placeholder="Cost" name="dc" value="<%=dishcost%>" readonly><br>
	  <input type="text" placeholder="Phone" name="phone"><br>
	  <input type="text" placeholder="Address" name="add"><br>
	  <input type="text" placeholder="Quantity"  name="qt">
	  
	  
	  <br>
	   <button class="btn" type="submit" align="center">add item</a>
        </button>    
		
		</div>

</form>

</body>
</html>