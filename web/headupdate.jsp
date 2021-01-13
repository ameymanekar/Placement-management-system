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
                    <th>Name</th>
                     <th>email</th>
                    <th>Contact No</th>
                        <th>Gender</th>
                            <th>branch</th>
                    <th>Date of Birth</th>
                   <th> User ID</th>
                   <th> Password</th> 
                
                    <th>Delete</th>
                   
                </tr>
                
                <%
                student stud2=new student();
                Vector vlist2=stud2.list21(search);
                for(int i=0;i<vlist2.size();i++)
            {
                student s=(student)vlist2.get(i);
                %>
                <tr> 
                    <td><%=s.getName()%></td><td><%=s.getemail()%></td>
                    
                    <td><%=s.getcontactno()%></td> <td><%=s.getgender()%></td>
                     <td><%=s.getBranch()%></td>
                    <td><%=s.getDOB()%></td><td><%=s.getuserid()%></td>
                    <td><%=s.getpwd()%></td>
                  
                   
                    <td><a href='updateheadfrm.jsp?sid=<%=s.getSid()%>' ><img src="images/update data.png" height="30px"></a></td>
                       </tr>
                <%  
            }
             %>
            </table>