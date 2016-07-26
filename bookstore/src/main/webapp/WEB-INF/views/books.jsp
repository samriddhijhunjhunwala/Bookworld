<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>  
 <html>  
 <head>  
   <title>BOOKS</title>  
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">  
   <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
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
   <style>  
     .odd {  
       background-color: antiquewhite;  
       color: #008b8b;  
     }  
     td th {  
       height: 30px;  
       min-width: 100px;  
     }  
     thead {  
       background-color: darkgray;  
       color: white;  
       height: 30px;  
     }  
.carousel-caption {
    top: 0;
    bottom: auto;
}
 .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
    }
   </style>  
 </head>  

  <%@include file="header.jsp" %>
<body ng-app="MyForm">  
   <div ng-controller="myCtrl">  
     <h3>Product List</h3>  
     <div class="container-fluid">  
       <hr />  
       <table class="table table-striped">  
          <thead>  
           <tr>  
             <th>Edit</th>
             <th>  
               <a href="" ng-click="order('id')">Product_id</a>  
             </th>   
             <th>  
               <a href="" ng-click="order('productname')">Product_name</a>  
             </th>  
             <th><a href="" ng-click="order('category')">Category</a> </th>  
             <th><a href="" ng-click="order('price')">Price</a> </th>  
               <th><a href="" ng-click="order('status')">Status</a> </th>  
                   <th><a href="" ng-click="order('description')">Description</a> </th>  
           </tr>  
         </thead>
         <tbody>  
           <tr>  
             <td>Filter</td>  
             <td> <input type="text" ng-model="search.id" /></td>  
             <td> <input type="text" ng-model="search.productname" /></td>  
             <td> <input type="text" ng-model="search.category" /> </td>  
              <td><input type="text" ng-model="search.price" /> </td>  
               <td><input type="text" ng-model="search.status" /> </td>  
                <td><input type="text" ng-model="search.description" /> </td>  

           </tr>  
           <tr ng-repeat="user in students | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">  
             <td>  
                <!--<button class="btn">  
                 Edit  
               </button>-->   
              </td>
             <td>{{ user.id}}</td>  
             <td>{{ user.productname}}</td>  
             <td>{{ user.category}}</td>  
             <td>{{ user.price}}</td>  
              <td>{{ user.status}}</td> 
               <td>{{ user.description}}</td> 
               <td><a href="details">details</a></td>
           </tr>
         </tbody>  
       </table>  
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div>  
   </div>  
   
   
<!--  ========= footer======= -->
	<%@include file="footer.jsp"%> 
   
   
   
 </body>  
 </html>