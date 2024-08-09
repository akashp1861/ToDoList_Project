<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All TODO Task</title>

<style type="text/css">


   body{
   
    color: #ffffff; /* White text for better contrast */
    background: #87ceeb; /* fallback for old browsers */
    background: rgb(135,206,235);
    background: linear-gradient(90deg, rgba(135,206,235,1) 0%, rgba(173,216,230,1) 50%);
   }
   
   
   
    .container {
        margin: 20px;
    }

    .title {
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
    }

    .custom-table {
        width: 100%;
        border-collapse: collapse;
    }

    .custom-table th, .custom-table td {
        border: 1px  black;
        border:outset;
        padding: 10px;
        text-align: left;
    }

    .custom-table th {
        background-color: black;
        font-family: monospace;
        color: white;
        text-align: center;
    }

    .btn {
        text-decoration: none;
        
    }

    .btn-success a {
        text-decoration: none;
        color: white;
       
    }

    .btn-success a:hover {
        color: white;
       
    }
	
	/* Target the second column */
	table td:nth-child(1),
	table td:nth-child(1) {
    background-color:gray; /* Change the background color */
    color: #333; /* Change the text color */
    font-family: cursive;
    color:yellow;
    
    text-align: center;
    
}

table td:nth-child(2),
	table td:nth-child(2) {
    background-color:gray; /* Change the background color */
    color: #333; /* Change the text color */
    
    color:white;
    
    text-align: center;
    }
    
    table td:nth-child(3),
	table td:nth-child(3) {
    background-color:gray; /* Change the background color */
    color: #333; /* Change the text color */
    
    color:white;
    
    text-align: center;
    }

    table td:nth-child(4),
	table td:nth-child(4) {
    background-color:gray; /* Change the background color */
    color: #333; /* Change the text color */
    
    color:white;
    
    text-align: center;
    }
    table td:nth-child(5),
	table td:nth-child(5) {
    background-color:gray; /* Change the background color */
    color: #333; /* Change the text color */
    
    color:white;
    
    text-align: center;
    }


.title{
   
   margin:50px;
   font-family: fantasy;
   font-size: 32px;
   height: 9px;
   }

.singleline{
 
	margin: auto;
    text-align: center;
    margin-bottom: 50px;
    line-height: -0.8;
    font-family: serif;
    background-color: gray;
    height: 25px;
    width: 22%;
    color: yellow;

}


	

</style>

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
		<link rel="stylesheet" 
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
  
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand"  href=/homepage>Home</a>
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

    
  <div class="container">
   
    <div>
    <h1 class="title"> ${login.name}'s TODOs Task </h1>
    <p class= "singleline"> View your TODOs Task here...
    </div>
  
    <form:form>

        <table class="custom-table">
            <tr>
                <!-- <th>Id</th> -->
                <th>Tasks</th>
                <th>Date</th>
                <th>Status</th>
                <th>Mark Completed</th>
                <th>Actions</th>
            </tr>

            <c:forEach var="todo" items="${list}">
                <tr>
                    <%-- <td>${todo.id}</td> --%>
                    <td>${todo.title}</td>
                    <td>${todo.date}</td>
                    <td>${todo.status}</td>
                    <td><button type="button" class="btn btn-light">
                        <a href="/updateToDoStatus/${todo.id}" style="color: black; background-color: transparent;">Mark Complete</a>
                    </button></td>
                 <td>
	                 <a href="/updateTodo/${todo.id}"> <i class="fa-solid fa-pen" 
	                 style="color:white; font-size: 28px;"></i> </a>
                 
	                 <a href="/deleteTodo/${todo.id}"><i class="fa-solid fa-circle-xmark" 
	                 style="color:black; font-size: 28px; margin-left: 18px;"   ></i></a>
                    
                
                    </button>
               </td>
                      
                        
                </tr>
            </c:forEach>

        </table>

    </form:form>


        <button type="button" class="btn btn-info btn-block mt-4"  style="background:teal; width: 20%; margin-left: 450px;">
        	<a href="/addToDoItem" style="color: white; ">Add New ToDo Item</a>
        </button>

    </div>
</body>
</html>