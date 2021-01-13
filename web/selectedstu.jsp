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
 <%
        String search = "";
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
<form><center>
               
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
         <br>
        <br>
        <br>
            </form>
               <table style="width:50%"  border="5"  >
             <tr>
                    <th>Company Name</th>
                    <th>View Selected Students</th>
                      
                   
                </tr>
                
                <%
                student stud2=new student();
                Vector vlist2=stud2.list33(search);
                for(int i=0;i<vlist2.size();i++)
            {
                student s=(student)vlist2.get(i);
                %>
   <tr>  
                    <td><%=s.getCname()%></td>
                     <td><a href='selectedstufrm2.jsp?sid=<%=s.getSid()%>' ><img src="44.png" height="30px"></a></td>
                    
                  
                   </center>
                       </tr>
                <%  
            }
             %>
            </table>