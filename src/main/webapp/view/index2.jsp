<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>


 User login 
<form action ="uservalidlogin" method ="post">
<input type="text" name="username">
<input type="text" name="password">

<input type="submit" value ="uservalidlogin">
<input type="reset" name="reset">

</form>
]
<a href="createaccountpage">Create Account </a>

Admin login
<form action ="adminvalidlogin" method ="post">
<input type="text" name="username">
<input type="text" name="password">

<input type="submit" value ="login">
<input type="reset" name="reset">

</form>
</body>
</html>