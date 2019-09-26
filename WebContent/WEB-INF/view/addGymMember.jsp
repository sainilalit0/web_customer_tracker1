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
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	    $( "#datepicker" ).datepicker();
	    $( "#format" ).on( "change", function() {
	      $( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
	    });
	  } );
  $( function() {
	    $( "#datepicker1" ).datepicker();
	    $( "#format" ).on( "change", function() {
	      $( "#datepicker1" ).datepicker( "option", "dateFormat", $( this ).val() );
	    });
	  } );
  $( function() {
	    $( "#datepicker2" ).datepicker({
	      changeMonth: true,
	      
	      changeYear: true,
	      yearRange: 'c-50:c+0',
	    });
	  } );
  </script>


 
  <!-- Font special for pages-->
  <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  
 <style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 13%;
  margin-left:25px;
  margin-top: 1px;
}

.col-75 {
  float: left;
  width: 30%;
  margin-top: 1px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

   
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
  <script>
  $(document).ready(function() {
	    $('#txtDate').datepicker();
	    $('#txtDate').datepicker('setDate', 'today');
	})
  </script>
 
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
<div>

</div>
<div class="container">
	
  <form:form action="saveMember" modelAttribute="customer" method="POST">
   	<form:hidden path="id"/>
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name</label>
      </div>
      <div class="col-75">
        
        <form:input path="firstName"  type="text" placeholder="Name" name="Name"/>
	    <form:errors path="firstName" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name</label>
      </div>
      <div class="col-75">
        <form:input path="lastName"  type="text" placeholder="last" name="last"/>
	    <form:errors path="lastName" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">DOB</label>
      </div>
      <div class="col-75">
        <form:input path="dob"  id="datepicker2" type="text" placeholder="dob" name="dob"/>
	    <form:errors path="dob" cssClass="error"></form:errors>
      </div>
    </div>
    
   <div class="row">
      <div class="col-25">
        <label for="lname">Contact</label>
      </div>
      <div class="col-75">
        <form:input path="contactNo"  type="text" placeholder="contact" name="contact"/>
	    <form:errors path="contactNo" cssClass="error"></form:errors>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="lname">Alternate No</label>
      </div>
      <div class="col-75">
        <form:input path="alternateNo"  type="text" placeholder="alternate" name="alternate"/>
	    <form:errors path="alternateNo" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">gender</label>
      </div>
      <div class="col-75">
        <form:select path="gender">
          <option disabled="disabled" selected="selected">Gender</option>
          <form:option value="male">Male</form:option>
          <form:option value="female">Female</form:option>
          <form:option value="other">Other</form:option>
          </form:select>
                                   
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Email</label>
      </div>
      <div class="col-75">
        <form:input path="email"  type="text" placeholder="email" name="email"/>
	    <form:errors path="email" cssClass="error"></form:errors>
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="lname">Occupation</label>
      </div>
      <div class="col-75">
        <form:input path="occupation"  type="text" placeholder="occupation" name="occupation"/>
	    <form:errors path="occupation" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Address</label>
      </div>
      <div class="col-75">
        <form:textarea path="address"  type="text" placeholder="address" name="address"/>
	    <form:errors path="address" cssClass="error"></form:errors>
      </div>
    </div>  
    <div class="row">
      <div class="col-25">
        <label for="lname">Subscription</label>
      </div>
      <div class="col-75">
        <form:select path="membership">
          <option disabled="disabled" selected="selected">membership</option>
          <form:option value="1 months">1 month</form:option>
          <form:option value="3 months">3 months</form:option>
          <form:option value="6 months">6 months</form:option>
          <form:option value="12 months">12 months</form:option>
          
          </form:select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Amount</label>
      </div>
      <div class="col-75">
        <form:input path="amount"  type="text" placeholder="amount" name="amount"/>
	    <form:errors path="amount" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Amount Status</label>
      </div>
      <div class="col-75">
        <form:input path="amountStatus"  type="text" placeholder="amountStatus" name="amountStatus"/>
	    <form:errors path="amountStatus" cssClass="error"></form:errors>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="lname">Pending Amount</label>
      </div>
      <div class="col-75">
        <form:input path="pendingAmount"  type="text" placeholder="pendingAmount" name="pendingAmount"/>
	    <form:errors path="pendingAmount" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Start Date</label>
      </div>
      <div class="col-75">
        <form:input path="startDate"  id="datepicker"   name="startDate"/>
	    <form:errors path="startDate" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">End Date</label>
      </div>
      <div class="col-75">
        <form:input path="endDate"  id="datepicker1"   name="endDate"/>
	    <form:errors path="endDate" cssClass="error"></form:errors>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">facility</label>
      </div>
      <div class="col-75">
        <form:select path="facility">
          <option disabled="disabled" selected="selected">select</option>
          <form:option value="gym">Gym</form:option>
          <form:option value="Weight loss">Weight loss</form:option>
          <form:option value="Weight gain">Weight gain</form:option>
          <form:option value="Dancing">Dancing</form:option>
          <form:option value="Crossfit">Crossfit</form:option>
          
          </form:select>
      </div>
    </div>
    <div>
    	   <button class="btn btn-primary" type="submit" value="save">Submit</button>
    </div>
    
    
  </form:form>
  
   <div style="clear;both;">
  </div>
  <p>
  <br>
  <a href="${pageContext.request.contextPath}/customerGym/list">Back To List</a> 
  </p>
  </div>

    </body>
</html>
