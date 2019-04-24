<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>
</head>
<body align="center">
<div class="bg"></div>
	<h1 align="center">Registration Page</h1>
	<form method="post" action="registration">
		<table align="center">
			<tr>
				<td>Enter UserName<sup>*</sup></td>
				<td>:</td>
				<td><input type="text" name="Username" required
					placeholder="max 5-20 characters">
			</tr>
			<tr>
				<td>Enter Password<sup>*</sup></td>
				<td>:</td>
				<td><input type="password" name="password" required
					placeholder="max 5-15 characters">
			</tr>
			<tr>
				<td>Enter Conform password<sup>*</sup></td>
				<td>:</td>
				<td><input type="password" name="cpword" required
					placeholder="max 5-15 characters">
			</tr>
			<tr>
				<td>Enter FirstName<sup>*</sup></td>
				<td>:</td>
				<td><input type="text" name="firstName" required
					placeholder="max 5-10 characters">
			</tr>
			<tr>
				<td>Enter LastName<sup>*</sup></td>
				<td>:</td>
				<td><input type="text" name="lastName" required
					placeholder="max 5-10 characters">
			</tr>
			<tr>
				<td>Enter DateOfBirth<sup>*</sup></td>
				<td>:</td>
				<td><input type="date" name="dob"></td>
			</tr>
			<tr>
				<td>Enter PhoneNumber<sup>*</sup></td>
				<td>:</td>
				<td><input type="text" name="phoneNum" required
					placeholder="+91***********">
			</tr>
			<tr>
				<td>Enter Email<sup>*</sup></td>
				<td>:</td>
				<td><input type="email" name="email" required
					placeholder="enter... @gamil.com">
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><input type="submit" value="Register">
			</tr>
		</table>
		<br>
		<br>
		<br>
		<br>
		<h2 align="center">
			<%
				if (request.getAttribute("message") != null) {
			%>
			<%=request.getAttribute("message")%>
			<%
				}
			%>
		</h2>
	</form>
	<a href="LogIn.jsp"></a>
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