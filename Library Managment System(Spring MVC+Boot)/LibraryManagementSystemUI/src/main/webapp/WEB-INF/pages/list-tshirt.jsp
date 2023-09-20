
<%@page import="java.sql.Blob"%>
<%@page import="com.nagarro.a4.entities.*"%>
<%@page import="com.nagarro.a4.dao.*"%>

<%@page import="java.util.List"%>
<html>
<head>
<title>Product Management Tool</title>
<link type="text/css"
		  rel="stylesheet"
		  href="css/style1.css" />
<link type="text/css"
		  rel="stylesheet"
		  href="css/add-customer-style.css">
</head>
<body>

	<h2>Image Upload</h2>
	
<div class="card-body">	
	<form action="/searchTshirt" method = "post" >
	
		Colour : <input type = "text" name = "colour" /> 	
		<br>
		Gender : <input type = "text" name = "gender" /> 	
		<br>
		Size : <input type = "text" name = "size" /> 	
		<br>
		<input type = "submit" value = "Upload" /> 	
	
	</form>
	
</div>
<div id="container">
	
		<div id="content">
	<table>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Colour</th>
					<th>Gender</th>
					<th>Size</th>
					<th>Price</th>
					<th>Rating</th>
					<th>Availabilty</th>
				</tr>
				
				<c:forEach var="tshirts" items="${tshirt}">
					
					<tr>
						<td> ${tshirts.id} </td>
						<td> ${tshirts.name} </td>
						<td> ${tshirts.colour} </td>
						<td> ${tshirts.gender} </td>
						<td> ${tshirts.size} </td>
						<td> ${tshirts.price} </td>
						<td> ${tshirts.rating} </td>
						<td> ${tshirts.availability} </td>
					</tr>
				
				</c:forEach>
						
			</table>
			</div>
	</div>
				

</body>
</html>
