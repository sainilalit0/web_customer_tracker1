<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fitness Gym - A Modern Fitness Gym </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
 
 
     <style>
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
      <a class="navbar-brand" href="#">      
       <img src="<c:url value="/resources/img/core-img/logo.png" ></c:url>"/> </a>
    </div>
    
    	<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Member <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Add New Member</a></li>
            <li><a href="#">Update|Delte </a></li>
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
              <li onclick="window.location.href='gymList';return false;"><a href="#">Trainner List</a></li>
             <li onclick="window.location.href='addGymTrainner';return false;"><a href="#">Add New Trainner</a></li>
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
  
<div class="container-fluid text-center"> 
<hr>
    <!--  Add New Button for add new customer -->
		<input type="button"  class="btn btn-primary" value="Add New Trainner"
		onclick="window.location.href='addGymTrainner';return false;"
		/>
  <div class="row content">
    
    <div class="col-sm-12 sidenav"> 
      
    
    <table cellpadding="2" cellspacing="2" class="table table-responsive  table-hover" border="1">
  <thead>
    <tr>
      <th scope="col" class="th-sm">#</th>
      <th scope="col" class="th-sm">Membership</th>
      <th scope="col" class="th-sm">Amount</th>
      <th scope="col" class="th-sm">Amount Status</th>
      <th scope="col" class="th-sm">Pending Amount</th>
      <th scope="col" class="th-sm">Start Date</th>
      <th scope="col" class="th-sm">End Date</th>
      <th scope="col" class="th-sm">Facility</th>
     
      
      
    </tr>
  </thead>
  <!--loop over to print our customers  -->
				<c:forEach var="tempGymInfo" items="${gyminfo}">
  <tbody>
    <tr>
      <td class="td-sm">${tempGymInfo.id}</td>
      <td class="td-sm">${tempGymInfo.membership}</td>
      <td class="td-sm">${tempGymInfo.amount}</td>
      <td class="td-sm">${tempGymInfo.amountStatus}</td>
      <td class="td-sm">${tempGymInfo.pendingAmount}</td>
      <td class="td-sm">${tempGymInfo.startDate}</td>
      <td class="td-sm">${tempGymInfo.endDate}</td>
      <td class="td-sm">${tempGymInfo.facility}</td>     
    </tr>
    
  </tbody>
  </c:forEach>
</table>
    
      
    
      
    </div>
    
  </div>
</div>

	
     
</body>
</html>