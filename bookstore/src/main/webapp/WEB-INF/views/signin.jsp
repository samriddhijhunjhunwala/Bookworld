<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="header.jsp" %>
<div class="container-wrapper">
    <div class="container">
<div id="login-box">

		<h3 style="font-family:forte ;color:#1A5880;">Login to continue</h3>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
			action="<c:url value='perform_login' />" method='POST'>

			<table>
				<tr>
				 
					<td>Name:</td>
					<td>
					<div class="form-group">
					<input type='text' name='name' class="form-control" id="name" placeholder="Enter Name"/>
					</div>
					</td>
					
				</tr>
				<tr>
				    <td>Password:</td>
					<td>
					<div class="form-group">
					<input type='password' name='password' class="form-control" id="name" placeholder="Enter Password"/>
					</div>
					</td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit" class="btn btn-default"
						value="submit" /></td>
						</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
		</div>
		</div>
	</div>
	 <!--  ========= footer======= -->
	<br><br><br><br><br><br><br><br><br><%@include file="footer.jsp"%> 
</body>
</html>