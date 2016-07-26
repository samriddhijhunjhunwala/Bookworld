<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<form:form command="address">

		<tr>
			<td><form:label path="street">
					<spring:message text="Street" />
				</form:label></td>
			<input type="text" name="street" />
		</tr>
		<tr>
			<td><form:label path="state">
					<spring:message text="State" />
				</form:label></td>
			<input type="text" name="state" />
		</tr>
		<tr>
			<td><form:label path="city">
					<spring:message text="City" />
				</form:label></td>
			<input type="text" name="city" />
		</tr>
		<tr>
			<td><form:label path="houseFlat">
					<spring:message text="House And Flat Number" />
				</form:label></td>
			<input type="text" name="houseFlat" />
		</tr>
		<input type="submit" name="_eventId_shippingAddProcessCompleted"
			class="btn btn-default" value="Submit" />
		
		<input type="submit" name="_eventId_backToUserInfoProcess" class="btn btn-default" value="Previous" />	
	   
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" />
	</form:form>


</body>
</html>