<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
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
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

    <!--  ========= Navigation bar======= -->
	<%@include file="header.jsp"%>
<script>

function bigImg(x) {
    x.style.height = "450px";
    x.style.width = "500px";
}

function normalImg(x) {
    x.style.height = "350px";
    x.style.width = "300px";
}
</script>
<script type="text/javascript">
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
        });
        </script>

	<!--  =========Table======= -->
	<table class="table">
		<thead colspan="4">
			<th><h1>Details</h1></th>
		</thead>
		<tbody>
			<tr>
				<td rowspan="8"><img onmouseover="bigImg(this)" onmouseout="normalImg(this)" src="resources/images/${param.id}.jpg"></td>
			</tr>
			<tr>
				<td><h3>Features</h3></td>
				<td><h3>Details</h3></td>
			</tr>
			<tr>
				<td><b>Name</b></td>
				<td>${param.name}</td>
			</tr>
			<tr>
				<td><b>Author</b></td>
				<td>${param.author}</td>
			</tr>
			<tr>
				<td><b>Price</b></td>
				<td>${param.price}</td>
			</tr>
			<tr>
				<td><b>Publisher</b></td>
				<td>${param.publisher}</td>
			</tr>
			<tr>
				<td><b>Status</b></td>
				<td>${param.status}</td>
			</tr>
			<tr>
				<td><b>Description</b></td>
				<td>${param.description}</td>
			</tr>
			<tr>
				<td><a href="userCheckout" class="btn btn-primary" role="button">Buy </a>
				
					<a href="#" class="btn btn-primary" role="button">Wishlist</a> 
					<a href="#myModal" role="button" data-toggle="modal"
					class="btn btn-primary">Share with a Friend</a>
				<%-- <input type="submit" name="_eventId_goToAddress" class="btn btn-default" value="Add to Cart"/>
				 <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" /> --%>
				 </td>
			</tr>
			<tr>

			</tr>
		</tbody>
	</table>
	
<!-- ==== Starting modal ==== -->
	
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Recommend a Friend</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" name="commentform" method="post" action="sendEmail">
    <div class="form-group">
        <label class="control-label col-md-4" for="first_name">First Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="last_name">Last Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="email">Email Address</label>
        <div class="col-md-6 input-group">
        <span class="input-group-addon">@</span>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email Address"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="comment">Question or Comment</label>
        <div class="col-md-6">
            <textarea rows="6" class="form-control" id="comments" name="comments" placeholder="Your suggestion or comment here">Hi, ${param.name} is available at ${param.price}</textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-6">
            <button type="submit" value="Submit" class="btn btn-custom pull-right">Send</button>
        </div>
    </div>
</form>
        </div><!-- End of Modal body -->
        </div><!-- End of Modal content -->
        </div><!-- End of Modal dialog -->
    </div>
	<!--  ========= footer======= -->
	<%@include file="footer.jsp"%> 
</body>
</html>