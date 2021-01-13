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
</style>
 <%
        String search = "";
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
<form>
               <h3> Name : <input type="text" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
               <table style="width:100%"  border="1"  >
             <tr>
                    <th>Company Name</th>
                     <th>email</th>
                    <th>Contact No</th>
                        <th>Website</th>                       

                            <th>Address</th>
                    <th>Discription</th>
                   
                    <th>Add Criteria</th>
                   
                </tr>
                
                <%
                student stud2=new student();
                Vector vlist2=stud2.list3(search);
                for(int i=0;i<vlist2.size();i++)
            {
                student s=(student)vlist2.get(i);
                %>
   <tr>  
                    <td><%=s.getCname()%></td><td><%=s.getemail()%></td>
                    
                    <td><%=s.getcontactno()%></td> <td><%=s.getwebsite()%></td>
                     <td><%=s.getcaddress()%></td>
                    <td><%=s.getdiscription()%></td>
                  
                   
                    <td><<a href='addcriteriafrm.jsp?sid=<%=s.getSid()%>' ><img src="55.jpg" height="30px"></a></td>
                       </tr>
                <%  
            }
             %>
            </table>