<%-- 
    Document   : profileeditfrm
    Created on : Feb 12, 2019, 1:05:24 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                      <%-- 
    Document   : form
    Created on : Mar 12, 2018, 10:07:03 PM
    Author     : Asus
--%>


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

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from studentprofile where name like '"+aaa+"%'";
System.out.println(aaa);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

	<!-- Meta tags -->
	<meta name="keywords" content="General Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- stylesheets -->
	<link rel="stylesheet" href="style.css" type="text/css" media="all">
	
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<style>
    .w3ls-banner {
    background: url(bg.jpg) no-repeat;
	background-size: cover;
    min-height: 100vh;
    color: white;
	background-position:center;
	padding-top: 30px;	
}
    </style>

	<div class="w3ls-banner">
	<div class="heading">
		<h1>Student Profile</h1>
	</div>
		<div class="container">
			<div class="agile-form">
				<form action="profileupdate.jsp" onsubmit="return myFunction()">
					<ul class="field-list">
						<li class="name">
							<label class="form-label">  Education <span class="form-required">  </span></label>
							<div class="form-input">
								
									
							</div>
						</li>
                                                 
                                                <li> 
							
							<div class="form-input">
								<input type="hidden" name="sid" value="<%=resultSet.getString("sid") %>" placeholder="10th %" required>
							
							</div>
						</li>
                                                <li> 
							
							<div class="form-input">
								<input type="hidden" name="name" value="<%=(String)session.getAttribute("userid")%>" placeholder="10th %" required>
							<input type="hidden" name="email" value="<%=resultSet.getString("email") %>" placeholder="10th %" required>
							
							</div>
						</li>
						<li> 
							<label class="form-label"> 10th %<span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" name="XI" value="<%=resultSet.getString("X") %>"  placeholder="10th %" required>
							
							</div>
						</li>
						<li> 
							<label class="form-label"> 12th % <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" name="XII" value="<%=resultSet.getString("XII") %>" placeholder="12th %" >
							
							</div>
						</li>
                                                <li> 
							<label class="form-label"> Poly % <span class="form-required">  </span></label>
							<div class="form-input">
								<input type="text"  name="poly" value="<%=resultSet.getString("poly") %>" placeholder="Poly %" >
							
							</div>
						</li>
                                               	<li> 
							<label class="form-label"> sem CGPA <span class="form-required"> * </span></label>
							<div class="form-input">
                                                            <input type="text" name="sem1" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" value="<%=resultSet.getString("sem1") %>" style="width: 30%; height: 30px;" placeholder="sem1 %" >
                                                                
                                                                <input type="text" name="sem2" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" value="<%=resultSet.getString("sem2") %>" style="width: 30%; height: 30px;" placeholder="sem2 %">
							<input type="text" name="sem3" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" value="<%=resultSet.getString("sem3") %>" style="width: 30%; height: 30px;" placeholder="sem3 %" >
                                                        <hr></hr>
							<input type="text" name="sem4" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" value="<%=resultSet.getString("sem4") %>" style="width: 30%; height: 30px;" placeholder="sem4 %" >
							<input type="text" name="sem5" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" value="<%=resultSet.getString("sem5") %>" style="width: 30%; height: 30px;" placeholder="sem5 %" required>
							<input type="text" name="sem6" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" value="<%=resultSet.getString("sem6") %>" style="width: 30%; height: 30px;" placeholder="sem6 %" required>
                                                        <hr></hr>
							<input type="text" name="sem7" pattern="[1,2,3,4,5,6,7,8,9,0]{2}" maxlength="5" value="<%=resultSet.getString("sem7") %>" style="width: 30%; height: 30px;" placeholder="sem7 %" required>
							
							
							</div>
						</li>
						<li>
							<label class="form-label"> Experience <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="experience" >
									<option value="<%=resultSet.getString("experience") %>"> <%=resultSet.getString("experience") %> </option>
									<option value="0 Year"> 0 Year</option>
                                                                        <option value="1 Year"> 1 Year</option>
                                                                        <option value="2 Year"> 2 Year</option>
                                                                        <option value="3 Year"> 3 Year</option>
                                                                        <option value="4 Year"> 4 Year</option>
                                                                        <option value="5 Year"> 5 Year</option>
                                                                        <option value="6 Year"> 6 Year</option>
									<option value="7 Year"> 7 Year</option>
									<option value="8 Year"> 8 Year</option>
                                                                        <option value="9 Year"> 9 Year</option>
                                                                        <option value="10 Year"> 10 Year</option>
								</select>
							</div>
						</li>
						
                                               
                                                <li class="name">
							<label class="form-label">   Certification <span class="form-required">  </span></label>
							<div class="form-input">
								
									<input type="text"  name="certification" value="<%=resultSet.getString("certification") %>" placeholder=" Certification" required>
								
							</div>
						</li>
						
                                                
						
					</ul>
					<div class="submit_btn">
						<input type="submit" value="Submit">
                                               </div>
                                   
				</form>	
			</div>
		</div>
		
		
	</

       
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
          
          
          
          
          
          
          
    </body>
</html>
