<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  <link rel="stylesheet"
        	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <script
        	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
            
<title>Insert title here</title>
<style type="text/css">
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  position: absolute;
  top :25%;
  left :35%;
  max-width: 450px;
  margin: 0 auto 150px;
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
  background: teal;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
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
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.error-message{
  margin: 10px 0 0;
  color: red;
  font-size: 12px;
}
.heading{
  color: black;
  font-size: 18px;
  font-family: cursive;
   font-weight: bold;
}

.title{

margin: auto;
text-align: center;
background-color: teal;
width: 35%;
padding: 22px;
font-family: cursive;
font-size: 20px;
}

</style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand"  class="text-secondary" href=/homepage>Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/viewToDoList">TODOs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href=/Viewprofile> Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login">Logout</a>
        </li>
       
      </ul>
     
    </div>
  </div>
</nav>


  <p class="title"> Heyy!! ${login.name} </p>

<div class="body">

<div class="form">
<p class="heading">  Update Profile </p>
    <form class="register-form"  action="/updateProfile" method="post" >
     <input type="hidden" name="id" value="${login.id}"/>
      <input type="text" placeholder="email Id" name="emailID"  value="${login.emailID}"/>
      <input type="text" placeholder="name" name="name" value="${login.name}"/>
      <input type="text" placeholder="contact" name="contact"  value="${login.contact}"/>
      <input type="password" placeholder="password"/ name ="password" value="${login.password}"/>
      <input type="password" placeholder="confirm password"  required="required" name="confirmPassword" />
      <button>Update</button>
</div>
</body>
</html>