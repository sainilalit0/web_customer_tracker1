<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fitness Gym - A Modern Fitness Gym </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js" />
  <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js" />
  <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/vendor/datepicker/moment.min.js" />
  <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/vendor/datepicker/daterangepicker.js" />

  <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/js/global.js" />
  <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/main.css" />
  <!-- Icons font CSS-->
  <link type="text/css"  rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
  <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <!-- Font special for pages-->
  <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  
 
    <style>
   
   	.error{
   	color:red;
   	}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
       
    }
    .dropdown, .dropup {
    position: relative;
    padding-top: 1%;
	}
	
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      
      height: 100%;
    }
   
  
    /* Set black background color, white text and some padding */
    footer {
      background-color: #262626;
      color: white;
      padding: 15px;
      padding-bottom: 0px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
  
 
</head>
<body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <div class="row">
    <div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
    	 <div class="navbar-header">
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/customerGym/list">      
       <img src="<c:url value="/resources/img/core-img/logo.png" ></c:url>"/> </a>
    </div>
    
    	<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Member <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <!-- Add new member form for gym member  -->
            <li onclick="window.location.href='addGymMember';return false;"><a href="#">Add New Member</a></li>
            <li><a href="#">Enquiry form</a></li>
            <li><a href="#">View Enquiry list</a></li>
           </ul>          
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Transaction <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">Balance Amount</a></li>
             <li><a href="#">Monthy </a></li>
             
             </ul>
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">View All Member <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">All Member </a></li>
             
             </ul>
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipment <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">Add Equipment</a></li>
             <li><a href="#">Update|Delte Equipment</a></li>
             
             </ul>
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Account  <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">Add New User</a></li>
             <li><a href="#">Remove User </a></li>
             <li><a href="#">Add New Subscription</a></li>
             <li><a href="#">Add New Facility</a></li>
             </ul>
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Trainner <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">Add New Trainner</a></li>
             <li><a href="#">Update|Delte Trainner</a></li>
             <li><a href="#">Client under Trainner</a></li>
            
             </ul>
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Report <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">Collection Report</a></li>
             <li><a href="#">Receipt Format </a></li>
             
             </ul>
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Reminder <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">Payment Reminder</a></li>
             
             </ul>
        </li>
        <li class="dropdown">
         	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Account <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="#">1 Month</a></li>
             <li><a href="#">3 Months</a></li>
             <li><a href="#">6 Months</a></li>
             <li><a href="#">12 Months</a></li>
                         
             </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><button class="glyphicon glyphicon-user btn btn-primary">Logout</button></li>
        
      </ul>
    </div>
    </div>
    </div>    
  </div>
</nav>

<div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Gym Registration Info</h2>
                    <form:form action="saveTrainner" modelAttribute="gym" method="POST">
                    
     				 <form:hidden path="id"/>
                        <div class="input-group">
                            
                              <form:input path="membership" class="input--style-3" type="text" placeholder="membership" name="membership"/>
                              <form:errors path="membership" cssClass="error"></form:errors>
                           
                            
                        </div>
                         <div class="input-group">
                            
                            <form:input path="amount" class="input--style-3" type="text" placeholder="amount" name="amount"/>
                            <form:errors path="amount" cssClass="error"></form:errors>
                        </div>
                        
                        <div class="input-group">
                            <form:input path="amountStatus"  class="input--style-3  " type="text" placeholder="amountStatus" name="amountStatus"/>
                        	<form:errors path="amountStatus" cssClass="error"></form:errors>   
                        </div>
                        <div class="input-group">
                            <form:input path="pendingAmount" class="input--style-3 " type="text" placeholder="pendingAmount" name="pendingAmount" />                           
                        	<form:errors path="pendingAmount" cssClass="error"></form:errors>
                        </div>
                        
                        <div class="input-group">
                            <form:input path="startDate" class="input--style-3 " type="text" placeholder="startDate" name="startDate"/>                           
                        	<form:errors path="startDate" cssClass="error"></form:errors>
                        </div>
                        
                        <div class="input-group">
                            <form:input path="endDate" class="input--style-3" type="email" placeholder="endDate" name="endDate"/>
                            <form:errors path="endDate" cssClass="error"></form:errors>
                        </div>
                        <div class="input-group">
                            <form:input path="trainnerName" class="input--style-3" type="text" placeholder="trainnerName" name="trainnerName"/>
                        	<form:errors path="trainnerName" cssClass="error"></form:errors>
                        </div>
                        <div class="p-t-10">
                              <button class="btn btn--pill btn--green" type="submit">Submit</button>
                            
                        </div>
                    </form:form>
                     
                </div>
                
            </div>
            <hr>
            <div style="clear;both;">
					  </div>
					  <h3>
					  <a href="${pageContext.request.contextPath}/gym/gymList">Back To List</a> 
					  </h3>
        </div>
    </div>
   


	
     
</body>
</html>
