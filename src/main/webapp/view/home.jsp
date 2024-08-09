<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Home</title>
    
    <style type="text/css">
    
    .bg{

      
    position: absolute;
    z-index: -1;
    opacity: 1.6;
    margin-top: 50%;
    height: 400px%;
    width: 100%;
    margin-left: -7%
        
    }
    
    p{
    
    margin: auto;
    text-align: center;
    padding: 2%;
    background-color:teal;
    color:white;
    width: 35%;
    font-size: 20px;
    font-family: cursive;
    
    }
    
    
    .name{
    
  
   
    }
    
    .title{
   margin: 13%;
   width: 35%;	
   padding:40px;
   margin-bottom:20%;
   font-family: fantasy;
   font-size: 45px;
   text-align: center;
    }
    
    .username {
    display: inline-block; /* Ensures the span takes up space */
    margin-top: 20px; /* Adjust this value to control space between "Welcome!" and the username */
    font-family:cursive;
    font-size: 25px; /* Adjust font size as needed */
    color: #333;
    }
    
    .para{
    
    display: inline-block; /* Ensures the span takes up space */
    margin-top: 30px; /* Adjust this value to control space between "Welcome!" and the username */
    font-family:sans-serif;
    font-size: 15px; /* Adjust font size as needed */
    color: #333;
    
    
    
    }
    </style>
    
  </head>
  <body>
  
  
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" >Home</a>
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
      
     <img class="bg" src="/imgTodo.jpg" alt="Example Image">
     
    </div>
  </div>
</nav>


  <div><p class="p1">Today's Plans, Tomorrow's Triumphs !</p></div>
  
  <div class="main"> 
  
 <h1 class="title"> Welcome!<br> <span class="username">${login.name}</span> <br> 
  <span class="para"> The secret of getting ahead is getting started. See your to-do tasks for today and complete them all.
                      All the best! </span> <br>
 <span > </span>
  </h1>
 

  </div>
  
  

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>