<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

 .bgimg {
  background-image: url("e.jpg");
  height: 100%;
  background-position: center;
  background-size: cover;
  position: relative;
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
}        
    </style>  
<body>
<div class="bgimg">
  <div class="topleft">
    <p><img src="https://media0.giphy.com/media/jnQWqkSVoqKmKJbjAB/source.gif" alt="Trulli" width="200" height="150"></p>
  </div>
  <div class="middle">
<div class="hotel">
     <center><h1>UPDATED........</h1></center>
</div>


<%
String n=request.getParameter("hotel");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");

Statement st=con.createStatement();


int i=st.executeUpdate("update hotel set status='add' where hotel='"+n+"'");
if(i>0){
	%>
	
	<center>
<p><img src="confirm gif.gif"><p>
</center>
<%
}
%>
</body>
</html>