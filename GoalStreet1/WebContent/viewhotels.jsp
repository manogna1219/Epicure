
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW HOTELS</title>
</head>
 <style>  
        table{  
            border-collapse: collapse;  
            width: 100%;   
        }  
        th,td{  
           border: 2px solid green;   
           padding: 15px;  
    }  
    
    table#alter th {  
    color:#000000 ;  
    background-color: #ff3300;  
    }
    table#alter tr:nth-child(even) {  
    background-color: #000000;  
}  
table#alter tr:nth-child(odd) {  
    background-color: #000000;
    } 
    
    .container {
  position: relative;
  width: 100%;
  max-width: 400px;
}

.container img {
  width: 100%;
  height: auto;
}

.container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #f1f1f1;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.container .btn:hover {
  background-color: black;
  color: white;
}
.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
  }
    
     .hotel{
     color:red;
     }  
     .bgimg {
  background-image: url("CAKE.png");
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
     <center><h1>VIEW HOTELS</h1></center>
</div>
     <table border="1" id="alter" >
     <tr><th>hotel</th><th>address</th><th>tables</th><th>info</th><th>contact</th>
      <th>specialdish</th><th>add/update</th></tr>

<%
String hotel= session.getAttribute("nkey").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from hotel");
while(rs.next())
{
String n=rs.getString("hotel");
String p=rs.getString("address");
String e=rs.getString("tables");
String o=rs.getString("info");
String m=rs.getString("contact");
String s=rs.getString("specialdish");

%>

<tr>
<td><%=n%></td>
<td><%=p%> </td>
<td><%=e%></td>
<td><%=o%></td>
<td><%=m%></td>
<td><%=s%></td>

<td><a href="additem.jsp?name=<%=n%>">additems</a>
</tr>

<%}%>
</table>
<div class="row">
 <div class="column">

 </div>
 <div class="column">
 <div class="container">
  <img src="https://cdn.dribbble.com/users/1797873/screenshots/5310497/logout.gif" alt="Snow" style="width:100%"><br>
<a href="index.html"><button class="btn">logout</button></a>
</div>
</div>
</div>

</div>
</div>
</body>
</html>