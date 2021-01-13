
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud3" class="hvpm.student" />
<jsp:setProperty name="stud3" property="*" />
Insert Result: <%=stud3.updatehead()%>
<% 
    response.sendRedirect("departhead.jsp");
  
 %>
