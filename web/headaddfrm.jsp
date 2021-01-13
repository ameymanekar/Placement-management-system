<%-- 
    Document   : addtpo
    Created on : Feb 13, 2019, 8:26:40 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
        <%-- 
    Document   : form
    Created on : Mar 12, 2018, 10:07:03 PM
    Author     : Asus
--%>

	<!-- Meta tags -->
	<title>Registration Page</title>
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
</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
		<h1>Department Head Registration</h1>
	</div>
		<div class="container">
			<div class="agile-form">
				<form action="headadd.jsp" onsubmit="return myFunction()">
					<ul class="field-list">
						<li class="name">
							<label class="form-label"> Name <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text" pattern="[A-Z a-z]+" name="name" placeholder="Full Name" required>
								
							</div>
						</li>
						<li> 
							<label class="form-label"> E-Mail Address <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="email" name="email"  placeholder="Mail@example.com" required>
							
							</div>
						</li>
						<li> 
							<label class="form-label"> Phone Number <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="contactno"  pattern="[1,2,3,4,5,6,7,8,9,0]{10}" title="Input Numbers upto 10 Digits" placeholder="Phone Number" maxlength="10" required >
							</div>
						</li>
                                               
						<li>
							<label class="form-label"> Gender <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="gender" required>
									<option value="">Gender</option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									
								</select>
							</div>
						</li>
						<li>
							<label class="form-label"> Branch<span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="branch" required>
                                                                    <option value="">Branch</option>
									<option value="CSE">CSE</option>
  <option value="EXTC">EXTC</option>
  <option value="IT">IT</option>
   <option value="MECHANICAL">MECHANICAL</option>
								</select>
							</div>
						</li>
                                                
                                                
						<li>
							<label class="form-label"> Date of Birth <span class="form-required"> * </span></label>
							<div class="form-input">
								
                                                            <input type="date" placeholder="" name="DOB" style="width: 98%; height: 30px;"  required> 
								
							</div>
						</li>
                                              <li>
							<label class="form-label">password<span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="password" placeholder="password" id="password" style="width: 98%; height: 30px;" name="pass"  required>
									
							</div>
						</li>
                                                
                                                  <li>
							<label class="form-label"> RE password <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="password" placeholder="re password" id="confirm_password" style="width: 98%; height: 30px;" name="rpass" required>  
								
							</div>
						</li>
                                                
						
					</ul>
					<div class="submit_btn">
						<input type="submit" value="Submit">
                                               </div>
                                   <script>
                var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
                </script> 
				</form>	
			</div>
		</div>
		
		

    </body>
</html>
