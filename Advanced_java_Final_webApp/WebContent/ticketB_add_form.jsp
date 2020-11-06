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
<spr:form action="ticketB_add.htm" method="post" commandName="ticketB" >
	<table align="center" >
	<tr>
			<td>
				Source:
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
				Amount:
			</td>
			<td>
				<spr:input path="price"/>
			</td>
		</tr>
		<tr>
			<td>
				Booking Date:
			</td>
			<td>
				<spr:input path="Date"/>
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Add" >
			</td>
		</tr>
	</table>
	</spr:form>

</body>
</html>