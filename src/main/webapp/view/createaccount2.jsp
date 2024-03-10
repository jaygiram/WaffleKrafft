<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
create Account
<form action ="createaccountdata" method ="post">

First Name<input type="text" name="fname">
Last Name<input type="text" name="lname">
email<input type="text" name="email">
User name<input type="text" name="username">
Password<input type="text" name="password">

<input type="submit" value ="login">
<input type="reset" name="reset">
<a href="loginpage">back to login.... ></a>

</form>

</body>
</html>