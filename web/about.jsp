<%-- 
    Document   : links
    Created on : Feb 15, 2018, 11:19:18 AM
    Author     : amey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
div.scrollmenu {
    background-color: #333;
    overflow: auto;
    white-space: nowrap;
   
}

div.scrollmenu a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px;
    text-decoration: none;
}

div.scrollmenu a:hover {
    background-color: #777;
    
    
}

body {
    margin: 0;
    padding: 0;
    background: url(hvpmcoet.jpg) no-repeat 0px 0px;
    min-height: 100vh;
    background-size: cover;
    font-family: 'Raleway', sans-serif;
}
h1 {
    margin: 0;
    color: #ffffff;
    text-align: center;
    font-size: 50px;
    font-weight: 500;
    letter-spacing: 2px;
    padding: 50px 0;
}

h2 {
    margin: 0;
    color: #fc3955;
    font-size: 25px;
    font-weight: 400;
    text-align: center;
    letter-spacing: 1px;
    padding-bottom: 30px;
}

p.w3l-register-p {
    color: #eee;
    font-size: 13px;
    text-align: center;
    margin-top: 2em;
}

.w3l-login-form {
    background: rgba(0, 0, 0, 0.77);
    max-width: 500px;
    margin: 0 auto;
    padding: 3em;
    border-radius: 10px;
    box-sizing: border-box;
}

.group {
    display: flex;
    padding: 15px 5px;
    background-color: #ffffff;
}

.group i {
    color: #fc3955;
    font-size: 20px;
    padding: 0 10px;
}

.w3l-form-group {
    margin: 20px 0;
}

.w3l-form-group label {
    display: block;
    text-transform: uppercase;
    font-size: 13px;
    color: #d2d2d2;
    letter-spacing: 2px;
    margin-bottom: 10px;
    font-style: italic;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    border: none;
    box-sizing: border-box;
    background: transparent;
    color: #000;
}

input[type="text"]:focus,
input[type="password"]:focus {
    outline: none;
}

button {
    background: #fc3955;
    color: #ffffff;
    font-size: 13px;
    text-transform: uppercase;
    letter-spacing: 1px;
    border: none;
    padding: 12px 60px;
    cursor: pointer;
    width: 100%;
    border-radius: 6px;
}

button:hover {
    background-color: #00BCD4;
    transition-duration: 5s;
}

.forgot {
    display: flex;
    justify-content: space-between;
    margin: 20px 0;
}

a {
    color: #eee;
    font-size: 14px;
    text-decoration: none;
}

.forgot p {
    color: #ffffff;
    text-align: center;
    margin: 0px;
	font-size: 13px;
}

.register {
    color: #00BCD4;
    text-decoration: none;
}

/*--footer--*/

p.copyright-agileinfo {
    font-size: 15px;
    letter-spacing: 2px;
    color: #fff;
    font-weight: 300;
}

footer p a {
    display: inline-block;
    color: #fff;
    text-decoration: underline;
}

footer p a:hover {
    color: #fff;
    text-decoration: none;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

footer {
    padding: 4em 0;
    text-align: center;
}
/*--//footer--*/

/*-- /responsive design --*/

@media(max-width:768px) {
    h1 {
        font-size: 47px;
    }
}

@media(max-width:667px) {
    h1 {
        font-size: 45px;
    }
}

@media(max-width:640px) {
    p.copyright-agileinfo {
        letter-spacing: 1px;
    }
    h1 {
        font-size: 43px;
    }
}

@media(max-width:568px) {
    h1 {
        font-size: 40px;
    }
    p.copyright-agileinfo {
        font-size: 14px;
    }
}

@media(max-width:480px) {
    .w3l-login-form {
    margin: 0 3vw;
}
    h1 {
        font-size: 38px;
    }
    p.copyright-agileinfo {
        line-height: 1.8em;
    }
}

@media(max-width:414px) {
    h1 {
        font-size: 34px;
    }
}

@media(max-width:384px) {
    h1 {
        font-size: 30px;
    }
}

@media(max-width:320px) {
    h1 {
        font-size: 25px;
    }
    .forgot p {
        text-align: left;
    }
    .forgot {
        display: block;
    }
}
        body {font-family: Arial, Helvetica, sans-serif;}
div.scrollmenu {
    background-color: #333;
    overflow: auto;
    white-space: nowrap;
   
}

div.scrollmenu a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px;
    text-decoration: none;
}

div.scrollmenu a:hover {
    background-color: #777;
    
    
}
	
	
		.errmsg{font-family: arial;
    font-size: 20pt;
    color: #ffffff;
    text-align: center;}

  .container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #f1f1f1;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.container .btn:hover {
  background-color: black;
  color: white;
}


</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
        <title>JSP Page</title>
        
    </head>
    
    <body class="page" >
   
    
        
        <div class="scrollmenu"  >
        
        
        <table cellspacing="5px" width="100%" >
            <th><td><a  href="index.jsp"  >Home</a></td></th>
            <th><td><a  href="Student.jsp"  >Student</a></td></th>
            <th><td><a  href="department.jsp"  >Department</a></td></th>
            <th><td><a  href="TPO.jsp"  >TPO</a></td></th>
 <th><td><a  href="admin.jsp"  >ADMIN</a></td></th>
            <th><td><a  href="about.jsp"  >About</a></td></th>
            
        </table>
           
    </div>
        
        
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
    <div class=" w3l-login-form">
     
        <form action="logintpo.jsp" method="POST">
<h2>Visit Our Main Website</h2>
            <div class=" w3l-form-group" >
               
          <button class="btn">  <a href="http://hvpmcoet.in/" >HVPM COET</a></button>
               
                
            </div>
            
           
           
        </form>
         </div>
   

        
        
        
        
    </body>
</html>
