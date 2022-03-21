<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Customer</title>
<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: #293741;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  

.savebtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 6px 0;  
  border: none;  
  cursor: pointer;  
  width: 10%;  
  opacity: 0.9; 
  align: left; 
}  
.savebtn:hover {  
  opacity: 1;  
}  
</style>  
</head>

<body>

	<div class="container">

		
		<h3 background-color="green;" align="center">CUSTOMER RELATIONSHIP
			MANAGEMENT</h3> 
		<hr>

		<h4 background-color="green;" align="left">Save Customer Details</h4> 

		<form action="/CustomerRelationManagement/customer/save" method="POST">
			<!-- Add hidden form field to handle update -->
			
				
					<input type="hidden" name="id" value="${customer.id}" />

				<label>First Name </label>
				
					<input type="text" name="fname" value="${customer.fname}"
						class="form-control mb-4 col-4" placeholder="First Name"  size="45">

				

					<label>Last Name </label>  
					<input type="text" name="lname" value="${customer.lname}"
						class="form-control mb-4 col-4" placeholder="Last Name" size="45">
						
						
					<label>Email</label>

					
<input type="text" name="email" value="${customer.email}"
						class="form-control mb-4 col-4" placeholder="Email" size="45">
						
			<button type="submit" class="savebtn">Save</button>

		</form>

		<hr>
		<a href="/CustomerRelationManagement/customer/list">Back to List</a>
</body>

</html>


