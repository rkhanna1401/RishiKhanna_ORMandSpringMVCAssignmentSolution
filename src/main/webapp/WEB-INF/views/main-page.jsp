<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.savebtn:hover {  
  opacity: 1;  
}  
</style>  
<title>Customer Directory</title>
</head>

<body>

	<div class="container">

	<h3 background-color="green;" align="center">CUSTOMER RELATIONSHIP
			MANAGEMENT</h3> 
		<hr>
		<form action="/CustomerRelationManagement/customer/showFormForAdd"
			class="form-inline">
			<a href="/CustomerRelationManagement/customer/showFormForAdd">
				<button class="btn btn-primary btn-sm mb-3">Add Customer</button>
			</a>

		</form>

		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${customer}" var="temp">
					<tr>
						<td><c:out value="${temp.fname}" /></td>
						<td><c:out value="${temp.lname}" /></td>
						<td><c:out value="${temp.email}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/CustomerRelationManagement/customer/showFormForUpdate?id=${temp.id}">
								Update </a> <a
							href="/CustomerRelationManagement/customer/delete?id=${temp.id}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>



