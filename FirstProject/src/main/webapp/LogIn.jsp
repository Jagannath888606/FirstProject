<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body align="center">
	<div class="bg"></div>
	<h1>LogIn Page</h1>
	<form action="login" method="post">
		<table align="center">
			<tr>
				<td>Enter UserName<sup>*</sup></td>
				<td>:</td>
				<td><input type="text" name="uname"
					placeholder="max 5-20 characters"></td>
			</tr>
			<tr>
				<td>Enter Password<sup>*</sup></td>
				<td>:</td>
				<td><input type="password" name="password"
					placeholder="max 5-15 characters">
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><input type="submit" value="login">
			</tr>
		</table>
		
	</form>
	
	<a href="Registration.jsp" align="center"><input type="submit"
			value="New User Register here??"></a>
			
			 <a href="ForgotPassword.jsp" align="center"><input type="submit"
			value="ForgotPassword"></a>
		
</body>
<style type="text/css">
table {
	color: green
}

sup {
	color: red
}

h1 {
	color: black
}
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("img_girl.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</html>