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
<title>VIEW USRES</title>
</head>
  <style>
   body{
    background-image: url("h.jpg");
  height: 500%;
  background-color:#cccccc;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  position: relative;
   
   
   }
     
  
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
    color:#FFFFFF; 
    background-color: #000000;  
}  
   table#alter tr:nth-child(odd) { 
   color:#FFFFFF; 
   background-color: #000000;
    } 
    
    .container {
  position: relative;
  width: 100%;
  max-width: 200px;
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
 
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
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
    </style>  


<div class="bgimg">
    <div class="topleft">
    <p><img src="https://media0.giphy.com/media/jnQWqkSVoqKmKJbjAB/source.gif" alt="Trulli" width="200" height="150"></p>
    </div>
 <div class="hotel">
     <center><h1>VIEW ADDED ITEMS</h1></center>  


<table border="1" id="alter">
<tr><th>Name</th><th>Phone</th><th>email</th><th>password</th><th>status</th>
<th>Acc/Rej</th></tr>

<%
String name= session.getAttribute("nkey").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer");
while(rs.next())
{
String n=rs.getString("name");
String p=rs.getString("phone");
String e=rs.getString("email");
String o=rs.getString("password");
String m=rs.getString("status");

%>

<tr>
<td><%=n%></td>
<td><%=p%></td>
<td><%=e%></td>
<td><%=o%></td>
<td><%=m%></td>

<td><a href="accept.jsp?name=<%=n%>">Accept</a>
<a href="reject.jsp?name=<%=n%>">reject</a></td>
</tr>
 
<%}%>

</table><br>
 <a href="index.html"><button type=button class="un">LOGOUT</button></a>
 </div>
</div>
</body>
</html>
