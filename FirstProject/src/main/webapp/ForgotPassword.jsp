<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
</head>
<body>
<body>
	<h1 align="center">Forget Password</h1>
	<form method="post" action="forgotpassword">
		<table align="center">
			<tr>
				<td>Enter UserName<sup>*</sup></td>
				<td>:</td>
				<td><input type="text" name="uname" required
					placeholder="max 5-15 characters">
			</tr>
			<tr>
				<td>Enter NewPassword<sup>*</sup></td>
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
				<td></td>
				<td></td>
				<td><input type="submit" value="update">
			</tr>
		</table>
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
body {
  background-color: lightgreen;
}
</style>

</html>