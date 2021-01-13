<%-- 
    Document   : studinfo
    Created on : Feb 17, 2018, 11:13:49 AM
    Author     : amey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
    font-family: Arial, Helvetica, sans-serif;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
}

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=number], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
<%
 String loginmsg="";
 if(request.getParameter("login")!=null)
    loginmsg="";
 %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String aaa = (String)session.getAttribute("userid");

String name3 = "22";
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "hvpm";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>

<table bstyle="width:100%"  border="1">
<tr>
<tr> <th>SID</th>
                    <th>Name</th>
                    <th>X %</th> 
                    <th>XII %</th>
                    <th>poly</th>
                    <th>sem1</th>
                    <th>sem2</th>
                   <th>sem3</th>
                    <th>sem4</th>
                    <th>sem5</th>
                    <th>sem6</th>
                    <th>sem7</th>
                     <th>experience</th>
                      <th>certification</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from studentprofile where name like '"+aaa+"%'";
System.out.println(aaa);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("sid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("X") %></td>
<td><%=resultSet.getString("XII") %></td>   
<td><%=resultSet.getString("poly") %></td>
<td><%=resultSet.getString("sem1") %></td>
<td><%=resultSet.getString("sem2") %></td>
<td><%=resultSet.getString("sem3") %></td>
<td><%=resultSet.getString("sem4") %></td>
<td><%=resultSet.getString("sem5") %></td>
<td><%=resultSet.getString("sem6") %></td>
<td><%=resultSet.getString("sem7") %></td>
<td><%=resultSet.getString("experience") %></td>
<td><%=resultSet.getString("certification") %></td>




</tr>

</table>
                                        
          
          
          
          
  
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</div>
               
           
    </body>
</html>
