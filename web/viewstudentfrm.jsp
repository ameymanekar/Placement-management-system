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
  
    body
{
    counter-reset: Serial;           /* Set the Serial counter to 0 */
}

table
{
    
}

tr td:first-child:before
{
  counter-increment: Serial;      /* Increment the Serial counter */
  content: " " counter(Serial); /* Display the counter */
}

</style>
 <%
        String search = request.getParameter("sid");;
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
<form><center>
               <h3>  <input type="hidden" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
               <table style="width:50%"  border="1"  >
             <tr>
                
                    <th>SR. NO.</th>
                    <th>Student Name</th>
                    <th>Email</th>
                       <th>Contact No</th>
                        <th>Gender</th>
                         <th>Branch</th>
                          <th>DOB</th>
                           <th>View Details </th>
                   
                </tr>
                
                <%
                student stud2=new student();
                Vector vlist2=stud2.list55(search);
                for(int i=0;i<vlist2.size();i++)
            {
                student s=(student)vlist2.get(i);
                %>
   <tr>  
                    <td></td>  
                    <td><%=s.getName()%></td>
                    <td><%=s.getemail()%></td>
                    <td><%=s.getcontactno()%></td>
                    <td><%=s.getgender()%></td>
                    <td><%=s.getBranch()%></td>
                    <td><%=s.getDOB()%></td>
                     <td><a href='viewstudeails.jsp?name2=<%=s.getName()%>' ><img src="123.png" height="30px"></a></td>
                    
                  
                   </center>
                       </tr>
                <%  
            }
             %>
            </table>