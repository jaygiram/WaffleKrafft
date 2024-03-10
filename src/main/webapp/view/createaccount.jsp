<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style2.css">
		<style>
	
		a {
    color: inherit; /* Use the color inherited from the parent element */
    text-decoration: none; /* Remove underline */
         }

   
		
		</style>
	</head>

	<body>

		<div class="wrapper" style="background-image: url('img/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="img/registration-form-1.jpg" alt="">
				</div>
				<form action="createaccountdata" method="post" >
					<h3>Create Account</h3>
					<div class="form-group">
						<input type="text" name="fname" placeholder="First Name" class="form-control" required>
						<input type="text"name="lname"  placeholder="Last Name" class="form-control"required>
					</div>
					<div class="form-wrapper">
						<input type="text" name="email" placeholder="Email Address" class="form-control"required>
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" name="username" placeholder="UserName" class="form-control"required>
						<i class="zmdi zmdi-account"></i>
					</div>
				<!--  	<div class="form-wrapper">
						<select name="" id="" class="form-control">
							<option value="" disabled selected>Gender</option>
							<option value="male">Male</option>
							<option value="femal">Female</option>
							<option value="other">Other</option>
						</select>
						<i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
					</div>-->
					<div class="form-wrapper">
						<input type="password" name="password"  placeholder="Password" class="form-control"required>
						<i class="zmdi zmdi-lock"></i>
					</div>
			<!--  <div class="form-wrapper">
						<input type="password" placeholder="Confirm Password" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>-->
					<button type="submit" value="createaccountdata" >Register
						<i class="zmdi zmdi-arrow-right" ></i>
					</button>
					
					<button  class="back"type="reset" value="loginpage"  >
					<a href="loginpage" >
					 Back to login 
						<i class="zmdi zmdi-arrow-right" ></i>
					</a>
					</button>
					
					
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>