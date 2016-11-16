<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행이 시작되는 공간</title>
<!-- Bootstrap Core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Theme CSS -->
<link href="/css/freelancer.min.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="/vendor/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
   rel="stylesheet" type="text/css">
</head>

<body id="page-top" class="index">
   


   <!-- Navigation -->
   <nav id="mainNav"
      class="navbar navbar-default navbar-fixed-top navbar-custom">
      <tiles:insertAttribute name="nav" />
   </nav>
   
   <header>
       <tiles:insertAttribute name="main" />
    </header>
   
   
   <!-- Portfolio Grid Section -->
   <section id="category">
      <tiles:insertAttribute name="cate" />
   </section>



   <!-- Footer -->
   <footer class="text-center">
      <tiles:insertAttribute name="footer" />
   </footer>



   <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
   <div
      class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
      <a class="btn btn-primary" href="#page-top"> <i
         class="fa fa-chevron-up"></i>
      </a>
   </div>

   <!-- Portfolio Modals -->

   <!-- jQuery -->
   <script src="/vendor/jquery/jquery.min.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

   <!-- Plugin JavaScript -->
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

   <!-- Contact Form JavaScript -->

   <!-- Theme JavaScript -->

</body>

</html>