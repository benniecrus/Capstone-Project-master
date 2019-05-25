<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="sendMessage">
	<input type="hidden" name="senderId" value="1">
	<input type="hidden" name="receiverId" value="2">
		<input type="text" name="content">
		<input type="submit" value="Send">
	</form>
	
	<form action="sendMessage">
	<input type="hidden" name="senderId" value="2">
	<input type="hidden" name="receiverId" value="1">
		<input type="text" name="content">
		<input type="submit" value="Send">
	</form>
	
	<form action="getMessage">
	<input type="hidden" name="userId" value="1">
	<input type="submit" value="show">
	</form>
	Your email to <s:property value="to"/> was sent successfully.
</body>
</html>