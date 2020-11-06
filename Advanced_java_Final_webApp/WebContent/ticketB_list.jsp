<%@page import="com.cdac.dto.TicketB"%>
<%@page import="java.util.List"%>
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
		<% 
		List<TicketB> elist = (List<TicketB>)request.getAttribute("expList");
		for(TicketB exp : elist){
		%>
		<tr>
		<td>
				<%=exp.getSource()%>
			</td>
			<td>
				<%=exp.getDestinatation()%>
			</td>
			<td>
				<%=exp.getPrice()%>
			</td>
			<td>
				<%=exp.getDate()%>
			</td>
			<td>
				<a href="ticketB_delete.htm?ticketBId=<%=exp.getTicketBId()%>">Delete</a>
			</td>
			<td>
				<a href="ticketB_update_form.htm?ticketBId=<%=exp.getTicketBId()%>">Update</a>
			</td>
		</tr>
		<% } %>
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				
			</td>
		</tr>
	</table>

</body>
</html>