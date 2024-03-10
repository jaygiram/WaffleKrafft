<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
contact

<a href="homepage" >Home</a> 
<a href="aboutpage" >about</a> 
<a href="servicepage" >service</a> 
<a href="contactpage" >contact</a> 
<a href="loginpage" >logout</a>

<form action ="contactdata" method ="post">

Name<input type="text" name=name>
Address<input type="text" name="address">
Email<input type="text" name="email">
contact<input type="text" name="message">

<input type="submit" value ="submit">
<input type="reset" name="reset">

</form>
</body>
</html>