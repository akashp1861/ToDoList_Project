<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.login-page {
  width:  200vh;
  height: 61vh;
  padding: 8% 0 0;
  margin: auto;
  display: flex;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background:teal;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: teal
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
    color: #ffffff; /* White text for better contrast */
    background: #87ceeb; /* fallback for old browsers */
    background: rgb(135,206,235);
    background: linear-gradient(90deg, rgba(135,206,235,1) 0%, rgba(173,216,230,1) 50%);
    font-family: "Roboto", sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;      
}
.error-message{
 margin: 10px 0 0;
  color: red;
  font-size: 12px;
}
.heading{
   color: black;
  font-size: 18px;
  font-family: "Times New Roman", Times, serif;
   font-weight: bold;
}

.tag{
color: black;
margin: auto;
text-align: center; 
margin-top: 10px;
margin-bottom:30px;
font-family :cursive;
font-size: 25px;
}
</style>
</head>
<body>

 <div class="login-page">

  <div class="form">

 <h3 class="tag"> Login TODOs </h3>
    <form class="register-form"  >
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form" action="${pageContext.request.contextPath}/validlogin" " method="post">
      <input type="text" placeholder=" Email Id" name="emailID"/>
      <input type="password" placeholder="password" required="required" name = "password"/>
      <button>login</button>
      
      <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="error-message"><%= request.getAttribute("errorMessage") %></div>
        <% } %>
        
      <p class="message">Not registered? <a href="register">Create an account</a></p>
      
    </form>
  </div>

 
</body>
</html>