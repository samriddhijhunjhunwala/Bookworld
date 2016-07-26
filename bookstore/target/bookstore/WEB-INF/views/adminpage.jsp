<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>

<html>
<head>
<title>productdetails</title>
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
	 <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
   <style>
    .error {
        color: red; font-weight: bold;
    }
</style>
   <script>  
     var app = angular.module('MyForm', ['ui.bootstrap', 'ngResource']);  
     app.controller('myCtrl', function ($scope) {  
       $scope.predicate = 'name';  
       $scope.reverse = true;  
       $scope.currentPage = 1;  
       $scope.order = function (predicate) {  
         $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;  
         $scope.predicate = predicate;  
       };  
       $scope.students = ${myJson};  //This code is extracting the string object being sent from controller
       $scope.totalItems = $scope.students.length;  
       $scope.numPerPage = 5;  
       $scope.paginate = function (value) {  
         var begin, end, index;  
         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
         end = begin + $scope.numPerPage;  
         index = $scope.students.indexOf(value);  
         return (begin <= index && index < end);  
       };  
     });  
   </script>  
   
</head>
<body>
	

	<h2>Add Product</h2>

	<c:url var="addAction" value="/adminpage/add"></c:url>
	<form:form action="${addAction}" commandName="student" enctype="multipart/form-data" method="POST">
		<table>
			<c:if test="${!empty student.bookname}">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="bookname">
						<spring:message text="Book Name" />
					</form:label></td>
				<td><form:input path="bookname" /></td>
				<td align="left"><form:errors path="bookname" cssClass="error"/></td>
			</tr>
			<tr>
				<td><form:label path="author">
						<spring:message text="Author" />
					</form:label></td>
				<td><form:input path="author" /></td>
				 <td align="left"><form:errors path="author" cssClass="error"/></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" /></td>
				 <td align="left"><form:errors path="price" cssClass="error"/></td>
			</tr>
			<tr>
				<td><form:label path="publisher">
						<spring:message text="Publisher" />
					</form:label></td>
				<td><form:input path="publisher" /></td>
				 <td align="left"><form:errors path="publisher" cssClass="error"/></td>
			</tr>
			<tr>
				<td><form:label path="status">
						<spring:message text="Status" />
					</form:label></td>
				<td><form:input path="status" /></td>
				 <td align="left"><form:errors path="status" cssClass="error"/></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" /></td>
			</tr>
			<td>
    		<form:label path="image">
    			<spring:message text="Upload Image"/>
    		</form:label>
    	</td>
    	<td>
    		<form:input path="image" type="file"/>
    	</td>
    </tr>
			<tr>
				<td colspan="2"><c:if test="${!empty student.bookname}">
						<input type="submit" value="<spring:message text="Edit Student"/>" />
					</c:if> <c:if test="${empty student.bookname}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
			<tr>
    	
		</table>
	</form:form>
	<br>
	<!--  ========= Table to populate data ======= -->
	<body ng-app="MyForm">  
   <div ng-controller="myCtrl">  
     <h3>Product List</h3>  
     <div class="container-fluid">  
       <hr />  
       <table class="table table-striped">  
          <thead>  
           <tr>  
             <th>  
               <a href="" ng-click="order('id')">Product_id</a>  
             </th>   
             <th>  
               <a href="" ng-click="order('productname')">Book_name</a>  
             </th>  
             <th><a href="" ng-click="order('category')">Author</a> </th>  
             <th><a href="" ng-click="order('price')">Price</a> </th>  
               <th><a href="" ng-click="order('publisher')">Publisher</a> </th>  
                   <th><a href="" ng-click="order('status')">Status</a> </th>  
                      <th><a href="" ng-click="order('description')">Description</a> </th>  
           </tr>  
         </thead>
         <tbody>  
           <tr>  
             <td> <input type="text" ng-model="search.id" /></td>  
             <td> <input type="text" ng-model="search.bookname" /></td>  
             <td> <input type="text" ng-model="search.author" /> </td>  
              <td><input type="text" ng-model="search.price" /> </td>  
               <td><input type="text" ng-model="search.publisher" /> </td>  
                <td><input type="text" ng-model="search.status" /> </td>  
                 <td><input type="text" ng-model="search.description" /> </td> 

           </tr>  
        
 <tr ng-repeat="element in students | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">
       
          
        
             <td>{{ element.id}}</td>  
             <td>{{element.bookname}}</td>  
             <td>{{ element.author}}</td>  
             <td>{{ element.price}}</td>  
              <td>{{  element.publisher}}</td> 
               <td>{{element.status}}</td> 
                 <td>{{element.description}}</td> 
              <td><a href="<c:url value='/edit/{{element.id}}' />" >Edit</a></td>
            	<td><a href="<c:url value='/remove/{{element.id}}' />" >Delete</a></td>
           </tr>
       
         </tbody>  
       </table>  
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div>  


<!--  ========= footer======= -->
	<%@include file="footer.jsp"%> 

</body>

</html>