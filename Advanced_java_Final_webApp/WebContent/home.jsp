<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center" >
		<tr><td>&nbsp;&nbsp;</td></tr>
		<tr>
			<td> Welcome <%=(session.getAttribute("user")!=null) ? ((User)session.getAttribute("user")).getUserName() : "!!!!!!!!" %> </td>
		</tr>
		<tr>
			<td> <a href="prep_ticketB_add_form.htm" >Book Ticket</a> </td>
		</tr>
		<tr>
			<td> <a href="ticketB_list.htm" >Booking List</a> </td>
		</tr>
		<tr>
			<td> <a href="prep_log_form.htm" >Logout</a> </td>
		</tr>
	</table>

</body>
</html>