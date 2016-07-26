<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>user_product_page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>



</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index" style="font-family:forte ;color:#1A5880;">BookWorld</a> 
      <img src="resources/images/openbook.png" style="max-height:45px;max-width:300px;">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      <li><a href="bookuser">BOOKS</a></li>
    <li><a href="aboutus">About Us</a></li>
    <li><a href="contactus">Contact Us</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<br>
<br>
	<h1>USER PRODUCT PAGE</h1>
	<!--  ========= Table to populate data ======= -->
	<center>
		<div class="container">
			<table>
				<table id="myTable" class="table table-striped">
					<thead>
						<tr>
							<th>Serial No</th>
							<th>Book Name</th>
							<th>Author</th>
							<th>Price</th>
							<th>Publisher</th>
							<th>Status</th>
							<th>Description</th>
							<th>Details</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listfromtable}" var="element">
							<tr>
								<td>${element.id}</td>

								<td>${element.bookname}</td>

								<td>${element.author}</td>

								<td>${element.price}</td>

								<td>${element.publisher}</td>

								<td>${element.status}</td>
								<td>${element.description}</td>
								<td><a
									href="details?id=${element.id}&name=${element.bookname}&author=${element.author}&price=${element.price}&publisher=${element.publisher}&status=${element.status}&description=${element.description}">Details</a></td>
								<!--  <td><a href="<c:url value='/details/${element.id}' />" >details</a></td>-->

							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
				</center>

				<!--  ========= footer======= -->
	             <%@include file="footer.jsp"%> 
</body>
<script>
$(document).ready(function(){
    $('#myTable').dataTable({"oSearch": {"sSearch": "${param.name}"}});
});
</script>
</html>
