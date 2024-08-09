<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">


   body{
   
    color: #ffffff; /* White text for better contrast */
    background: #87ceeb; /* fallback for old browsers */
    background: rgb(135,206,235);
    background: linear-gradient(90deg, rgba(135,206,235,1) 0%, rgba(173,216,230,1) 50%);
   }

.container {
    position: relative;
    margin: 150px;
    
}

.form-wrapper {
    display: flex;
    border: 1px solid black; /* Thin black border */
    border-radius: 10px;
    padding: 20px;
    position: relative;
    width: 50%;
    font-family: cursive;
    
    background-color: teal;
    color: white;
    
}

.todo-form {
    flex: 1;
}

.side-text {
    position:absolute;
    right: -550px; /* Adjust this value to place the text outside the border */
    top: 32%;
    left: 
    transform: translateY(-50%);
    font-size: 25px;
    white-space: nowrap;
    font-family:fantasy;
    color: black;
    text-align: center;
}

.p-3{

font-family: fantasy;
margin-bottom: 20px;
font-size: 30px;
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

</head>
<body>
 <div class="container">
    <h1 class="p-3">Add a ToDo Task</h1>
    <div class="form-wrapper">
        <form:form action="/saveToDoItem" method="post" modelAttribute="todo" class="todo-form">
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3" for="title">Title</label>
                    <div class="col-md-6">
                        <form:input type="text" path="title" id="title"
                            class="form-control input-sm" required="required" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3" for="date">Date</label>
                    <div class="col-md-6">
                        <form:input type="date" path="date" id="date"
                            class="form-control input-sm" required="required" />
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3" for="status"></label>
                    <div class="col-md-6">
                        
                    </div>
                    
                   <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="status">Status</label>
            		<div class="col-md-6">
            			<form:input type="text" path="status" id="status"
            				class="form-control input-sm" value="Incomplete" />
            		</div>
                    
                </div>
            </div>

            <div class="row p-2">
                <div class="col-md-2">
                    <button type="submit" class="btn btn-light">Add</button>
                </div>
            </div>
        </form:form>
        <span class="side-text">Sizzle through your schedule,<br> Add a touch of excitement to your day !!</span>
        
    </div>
</div>



</body>
</html>