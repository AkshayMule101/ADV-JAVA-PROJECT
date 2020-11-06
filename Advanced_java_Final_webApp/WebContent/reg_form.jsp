<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="reg.css">

<title>Registration Form</title>
</head>
<body>
<spr:form action="reg.htm" method="post" commandName="user" style="max-width:500px;margin:auto">
  
  <h2 style="text-align:center">Register Form</h2>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <spr:input class="input-field" placeholder="UserName" path="userName"/>
  </div>

  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
<spr:input class="input-field" type="email" placeholder="Email" path="userEmail"/>
</div>
  
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <spr:input class="input-field" type="password" placeholder="Password" path="userPass"/>
				<font color="red" ><spr:errors path="userPass" ></spr:errors></font>
  </div>
  
  <div class="input-container">
    <i class="fa fa-phone icon"></i>
   <spr:input class="input-field" placeholder="Mobile No" path="userMob"/>
</div>
<div>
  <button type="submit" class="btn">Register</button>
  </div>
  <div>
  <button type="submit" class="btn"><a href="index.jsp" ></a>Back</button>
  </div>
  </spr:form>
</body>
</html>