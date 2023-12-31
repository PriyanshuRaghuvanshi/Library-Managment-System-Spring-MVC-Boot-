<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Book Registration Form</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
		body {
			background-color: #f5f5f5;
			margin: 0;
			padding: 0;
			font-family: Arial, Helvetica, sans-serif;
		}

		form {
			margin: 20px auto;
			max-width: 500px;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0px 0px 10px #888;
			border-radius: 10px;
		}

		h1 {
			text-align: center;
			margin-top: 50px;
		}
	</style>
</head>

<body>

	<h1>Book Registration Form</h1>

	<form:form action="/book/register" modelAttribute="book">
	
		<div class="form-group">
			<label for="id">Book ID:</label>
			<input type="text" id="id" name="id" class="form-control" value="${book.id}" readonly />
		</div>
	
		<div class="form-group">
			<label for="name">Book Name:</label>
			<form:input path="name" id="name" class="form-control" placeholder="Enter book name"/>
		</div>

		<div class="form-group">
			<label for="date">Date:</label>
			<input type="text" id="date" class="form-control" value="<%=(new java.util.Date()).toLocaleString()%>" readonly />
		</div>

		<div class="form-group">
			<label for="author">Author:</label>
			<form:select path="author.id" id="author" class="form-control">
				<form:options items="${authorMap}" />
			</form:select>
		</div>

		<button type="submit" class="btn btn-primary">Submit</button>

	</form:form>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
