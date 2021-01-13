<%-- 
    Document   : addcriteriafrm2
    Created on : Feb 16, 2019, 5:28:20 PM
    Author     : Asus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud" class="hvpm.student" scope="session" />
<jsp:setProperty name="stud" property="*" />
Insert Result: <%=stud.criteriainsert()%>
<% 
    response.sendRedirect("viewcompany.jsp");
  
 %>
