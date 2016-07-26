<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>MyCorp Inc.</title>
<link rel="icon" href="${z}/mobile.ico" type="image/x-icon">
</head>
<body>
	<center>
		<div class="container">
			<div class="jumbotron">
				<h1>Make Payment</h1>
				<form:form action="#" method="post">
					<div class="form-group">
						<label for="cardName">Card Holder's Name</label> <input
							type="text" style="width: 250px !important;" name="cardName"
							class="form-control" />
					</div>
					<div class="form-group">
						<label for="cardNumber">Credit Card Number</label> <input
							type="number" pattern="0-9" name="cardNumber"
							style="width: 250px !important;" class="form-control"
							maxlength="16" />
					</div>
					<div class="form-group">
						<label for="expiry">Expiry Date</label> <input type="month"
							name="expiry" style="width: 250px !important;"
							class="form-control" maxlength="16" />
					</div>
					<div class="form-group">
						<label for="cvvNumber">CVV Number</label> <input pattern="0-9"
							type="number" style="width: 250px !important;" name="cvvNumber"
							class="form-control" maxlength="3" />
					</div>
					<div class="form-group">
						<label for="amount">Total Amount Payable</label> <input
							pattern="0-9"  type="number" style="width: 250px !important;"
							name="amount" class="form-control" />
					</div>
					<div class="form-group">
						<input type="submit" 
							name="submit" value="Go Back" class="btn btn-success" /> 
							<input  class="btn btn-success"
							type="submit" name="submit"
							value="Make Payment"/>
					</div>

				</form:form>
			</div>

		</div>
	</center>
</body>
</html>