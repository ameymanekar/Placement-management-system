<%-- 
    Document   : Companyadd
    Created on : Feb 16, 2019, 11:19:13 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud" class="hvpm.student" scope="session" />
<jsp:setProperty name="stud" property="*" />
Insert Result: <%=stud.companyinsert()%>
<% 
    response.sendRedirect("hometpo.jsp");
  
 %>

