<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<spr:form action="ticketB_update.htm" method="post" commandName="ticketB" >
	<table align="center" >
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="ticketBId"/>
			</td>
		</tr>
		<tr>
			<td>
				source :
			</td>
			<td>
				<spr:input path="source"/>
			</td>
		</tr>
		<tr>
			<td>
				Destinatation :
			</td>
			<td>
				<spr:input path="destinatation"/>
			</td>
		</tr>
		<tr>
			<td>
				Booking Date :
			</td>
			<td>
				<spr:input path="Date"/>
			</td>
		</tr>
		<tr>
			<td>
				Price:
			</td>
			<td>
				<spr:input path="price"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="ticketB_list.htm" >Back</a>
			</td>
			<td>
				<input type="submit" value="Update" >
			</td>
		</tr>
	</table>
	</spr:form>

</body>
</html>