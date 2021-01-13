<%-- 
    Document   : addcriteria
    Created on : Feb 16, 2019, 11:34:18 AM
    Author     : Asus
--%>
<%@page import="hvpm.student"%>
<%@page import="java.util.Vector"%>

<style>
    
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
    font-family: Arial, Helvetica, sans-serif;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
}

table, th, tr {
  border: 1px solid black;
}
</style>
   <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String name22 = request.getParameter("sid");

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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from criteriaadd where sid= "+name22+"";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
 <%
      String a1 =  resultSet.getString("XI");
       String a2 =  resultSet.getString("XII");
       
       
    %>
<form><center>
               
        
         <br>
        <br>
        <br>
            </form>
               <table style="width:50%"  border="5"  >
             <tr>
                    <th>Name</th>
                  
                    
                      
                   
                </tr>
                
                <%
                student stud2=new student();
                Vector vlist2=stud2.update33(a1,a2);
               for(int i=0;i<vlist2.size();i++)
           {
                student s=(student)vlist2.get(i);
                %>
   <tr>  
                    <td><%=s.getName()%></td>
                    
                    
                  
                   
                   
                    
          
            
        <%
            }
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>           
                  
    </center>
                       </tr>
                         </table>

    <form action="EmailSendingServlet" method="post">
			
				<input type="hidden"  name="recipient" size="50"/>
                                <input type="hidden" value="Placement" name="subject" size="50"/>
                                <input type="hidden" value="<%=name22%>" name="subject2" size="50"/>
                               
                                <input type="hidden" value="congratulations you are selected" cols="39" name="content">
      
		
			<input type="submit" value="Send mail"/>
			</form>
         
