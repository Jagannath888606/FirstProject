<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
<div class="bg"></div>
<h1 align="center">Home Page</h1>
<table align="center">
<tr>
<td><h3 align="center">Login Success.....</h3></td>
</tr>
<tr>
 <td > <h3 align="center">
  Hi Helllo, <%= request.getAttribute("username") %>
 </h3> </td>
 </tr>
 <tr>
  <td><h3 align="center"> Your Home Page being under processing........</h3></td>
 </tr>
</table>
</body>
<a href="LogIn.jsp">Back</a>
<style type="text/css">
h1 {
	color: red
}

h3 {
	color: blue
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