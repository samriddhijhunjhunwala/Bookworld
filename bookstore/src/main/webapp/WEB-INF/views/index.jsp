<!DOCTYPE html>
<html lang="en">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<head>
  <title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.js"></script>
  <style>
    .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 55%;
      margin: auto;
    }
.carousel{
    background: #2f4357;
}

div > h3 {
color:white;
font-weight:bold;
}
.verticalLine {
    border-left: thick solid #ff0000;
}
hr {
    display: block;
    margin-top: 0.9em;
    margin-bottom: 0.9em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
    color:black;
}
  </style>
 

</head>


<body>
    <!--  ========= Navigation bar======= -->
	<%@include file="header.jsp"%>
<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel" data-interval="5000">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol> 
  <div class="carousel-inner" role="listbox">
    <div class="item active">
   <img src="resources/images/books.jpg" class="img-responsive"></img>
   
    <div class="carousel-caption">
        <h3>PICTURE BOOKS</h3>
        <p></p>
    </div>
    </div>

    <div class="item">
      <img src="resources/images/Collages1.jpg" ></img>
        <div class="carousel-caption">
        <h3>REFERENCE BOOKS</h3>
    </div>
    </div>

    <div class="item">
      <img src="resources/images/books2.jpg"></img>
        <div class="carousel-caption">
      <h3>STORY BOOKS AND NOVELS</h3>
    </div>
    </div>
  </div>
   
  <!-- Left and right controls -->

 <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
   <div class="container-fluid">
  <div class="row">
    <div class="col-md-6">
   
         <h1>JOY OF BOOKS <span class="glyphicon glyphicon-heart"> </span></h1>
         <p>What is life without the joy of reading? 
           The excitement you feel surging inside as you turn a page. 
         The heavenly aroma you inhale as you flip the pages of a newly bought book. 
         The hatred you feel  towards the author for ending the book the way she did and not the way you wanted her to.</p>
        
         <p>The joy of reading books can't be described in words. 
         It's something that you understand only by real experience.
        There is much more to life than your work, and the time that you spend aimlessly using the latest technology products. 
        Reading books gives you that much needed break from the chaos in your life. 
        It instills peace inside you, makes you relaxed and also exercises your brain in the process.
        When you read a book, it feels great to put yourself into a world the writer has created for you. 
        Ask any avid reader about this, and they too will agree that reading a book is same like watching a movie.</p>   
         <p>Relax and enjoy the magic that ensues when you combine a bookstore full of books, 
            skillful stop-motion animation, haunting music, a boatload of creativity and 28 
             volunteers: The Joy of Books is a brilliant video by Sean Ohlenkamp.</p>      
  </div>
   <br>
   <div class="col-md-6"><span class="pull-right">
    <iframe width="540" height="360" src="https://www.youtube.com/embed/SKVcQnyEIT8" frameborder="0" allowfullscreen></iframe>
     </span>
     </div>
     </div>
     </div>
     <br>
     <hr>
  
 <!--  ========= Productslider bar======= -->
	<%@include file="productslider.jsp"%> 
    
   <!--  ========= footer======= -->
	<%@include file="footer.jsp"%> 
    

</body>
</html>
