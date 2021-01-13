<%-- 
    Document   : viewstudent
    Created on : Feb 16, 2019, 7:02:34 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view student</title>
    </head>
    <body>
        <center>
       <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>

<h2>Students</h2>

<table>
    <center>
  <tr>
    <th>Branch</th>
    <th>view Student</th>
 
  </tr>
  <tr>
    <td>Computer Science Engineering(CSE)</td>
    <td><a href='viewstufrm.jsp?sid=CSE'><img src="123.png" height="30px"></a></td>
  
  </tr>
  <tr>
    <td>Electronics & Telecommunications(EXTC) </td>
    <td><a href='viewstufrm.jsp?sid=EXTC'><img src="123.png" height="30px"></a></td>
  
  </tr>
  <tr>
      <td> Information Technology (IT)</td>
    <td><a href='viewstufrm.jsp?sid=IT'><img src="123.png" height="30px"></a></td>
   
  </tr>
  <tr>
    <td>MECHANICAL</td>
    <td><a href='viewstufrm.jsp?sid=MECHANICAL'><img src="123.png" height="30px"></a></td>
   
  </tr>
 
 </center>
</table>
</center>
    </body>
</html>
