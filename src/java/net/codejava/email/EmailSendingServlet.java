package net.codejava.email;

import hvpm.student;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 * 
 * @author www.codejava.net
 * 
 */
@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// reads form fields
		String recipient = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String subject2 = request.getParameter("subject2");
		
                String content = request.getParameter("content");

		String resultMessage = "";
        
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

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from criteriaadd where sid= "+subject2+"";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      String a1 =  resultSet.getString("XI");
       String a2 =  resultSet.getString("XII");
       
       
 student stud2=new student();
                Vector vlist2=stud2.update33(a1,a2);
               for(int i=0;i<vlist2.size();i++)
           {
                student s=(student)vlist2.get(i);
                

                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
		try {
                       
           
             
			EmailUtility.sendEmail(host, port, user, pass, s.getemail() , subject,
					content);
                
			resultMessage = "The e-mail was sent successfully";
                
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		} finally {
			request.setAttribute("Message", resultMessage);
			getServletContext().getRequestDispatcher("/Result.jsp").forward(
					request, response);
		}
	}
               
               }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

}
}


