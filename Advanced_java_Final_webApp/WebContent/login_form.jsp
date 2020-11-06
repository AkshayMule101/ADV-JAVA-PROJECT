<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="login.css">
<title>Login Form</title>
</head>
<body>

<div class="container">
 <spr:form action="login.htm" method="post" commandName="user" >
    <div class="row">
      <div class="vl">
        <span class="vl-innertext">or</span>
      </div>

      <div class="col">
        <a href="facebook.com" class="fb btn">
          <i class="fa fa-facebook fa-fw"></i> Login with Facebook
         </a>
        <a href="twitter.com" class="twitter btn">
          <i class="fa fa-twitter fa-fw"></i> Login with Twitter
        </a>
        <a href="google.com" class="google btn"><i class="fa fa-google fa-fw">
          </i> Login with Google+
        </a>
      </div>

      <div class="col">

        <label for="uname"><b>Username</b></label>
				<spr:input path="userName"/>
				<font color="red" ><spr:errors path="userName" ></spr:errors></font>
				
    <label for="psw"><b>Password</b></label>
    <spr:password path="userPass"/>
	<font color="red" ><spr:errors path="userPass" ></spr:errors></font>
			
       <input type="submit" value="Login">
        <button type="submit" class="btn"><a href="index.jsp" ></a>Back</button>
      </div>
      
    </div>
  </spr:form>
</div>

<div class="bottom-container">
  <div class="row">
    <div class="col">
      <a href="index.jsp" style="color:white" class="btn">Sign up</a>
    </div>
    <div class="col">
      <a href="index.jsp" style="color:white" class="btn">Forgot password?</a>
    </div>
  </div>
</div>

</body>
</html>