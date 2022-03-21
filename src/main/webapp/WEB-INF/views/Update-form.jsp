<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">

		<h3 style="background-color: green;">CUSTOMER RELATIONSHIP MANAGEMENT</h3>
		<hr>

		<p class="h4 mb-4">Save Customer</p>

		<form action="/CustomerRelationManagement/customer/save"
			method="POST">
<table>
<tbody>
<tr>
<!-- Add hidden form field to handle update -->
		<td>	<input type="hidden" name="id" value="${customer.id}" /> </td>
		</tr>
			
			<tr>
		<td>		<input type="text" name="fname" value="${customer.fname}"
					class="form-control mb-4 col-4" placeholder="First Name:"> </td>
					</tr>

			<br />

			<tr>

			<td>	<input type="text" name="lname" value="${customer.lname}"
					class="form-control mb-4 col-4" placeholder="Last Name:"> </td>
					</tr>

			<br />
		<tr>

			<td>	<input type="text" name="email" value="${customer.email}"
					class="form-control mb-4 col-4" placeholder="Email:"> </td>

	</tr>
			<br />

			<button type="submit" class="btn btn-info col-2">Save</button>
</tbody>
</table>
		</form>

<a href="/CustomerRelationManagement/customer/list">Back to List</a>

	</div>
</body>

</html>


