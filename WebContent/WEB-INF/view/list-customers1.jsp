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
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  
 
 
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
    a {
    color: #337ab7;
    text-decoration: none;
	}
	.results tr[visible='false'],
	.no-result{
	  display:none;
	}
	
	.results tr[visible='true']{
	  display:table-row;
	}
	
	.counter{
	  padding:8px; 
	  color:#ccc;
	}
	.form-group {
    margin-bottom: 0px;
	}
  </style>
  <script>
  $(document).ready(function() {
	  $(".search").keyup(function () {
	    var searchTerm = $(".search").val();
	    var listItem = $('.results tbody').children('tr');
	    var searchSplit = searchTerm.replace(/ /g, "'):containsi('")
	    
	  $.extend($.expr[':'], {'containsi': function(elem, i, match, array){
	        return (elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
	    }
	  });
	    
	  $(".results tbody tr").not(":containsi('" + searchSplit + "')").each(function(e){
	    $(this).attr('visible','false');
	  });

	  $(".results tbody tr:containsi('" + searchSplit + "')").each(function(e){
	    $(this).attr('visible','true');
	  });

	  var jobCount = $('.results tbody tr[visible="true"]').length;
	    $('.counter').text(jobCount + ' item');

	  if(jobCount == '0') {$('.no-result').show();}
	    else {$('.no-result').hide();}
			  });
	});
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
  
<div class="container-fluid text-center">  <hr>
 <!--  Add New Button for add new customer -->
		<input type="button"  class="btn btn-primary" value="Add New Customer"
		onclick="window.location.href='addGymMember';return false;"
		/>
		<div class="form-group pull-right">
    <input type="text" class="search form-control" placeholder="What you looking for?">
</div>
   <span class="counter pull-right"></span>
  
    
    <div class="col-sm-12 sidenav"> 
      
      <table cellpadding="2" cellspacing="2" class="table table-responsive  table-hover  table-bordered results" border="1">
  <thead>
    <tr>
      <th scope="col" class="th-sm">#</th>
      <th scope="col" class="th-sm">First Name</th>
      <th scope="col" class="th-sm">Last Name</th>
      <th scope="col" class="th-sm">DOB</th>
      <th scope="col" class="th-sm">Ph</th>
      <th scope="col" class="th-sm">Alternate-No</th>
      <th scope="col" class="th-sm">Gender</th>
      <th scope="col" class="th-sm">Email</th>
      <th scope="col" class="th-sm">Occupation</th>
      <th scope="col" class="th-sm">Address</th> 
      <th scope="col" class="th-sm">membership</th> 
      <th scope="col" class="th-sm">Amount</th>
      <th scope="col" class="th-sm">Amount Status</th>
      <th scope="col" class="th-sm">Pending Amount</th>
      <th scope="col" class="th-sm">Start Date</th>
      <th scope="col" class="th-sm">End Date</th>
      <th scope="col" class="th-sm">Facility</th>      
      <th scope="col" class="th-sm">Action</th>
    </tr>
  </thead>
  		<c:forEach var="tempCustomer" items="${customers}">
  		<!-- construct an "update" link with customerId -->
		<c:url var="updateLink" value="/customerGym/showFormForUpdate">
		<c:param name="customerId" value="${tempCustomer.id}"></c:param>
	   </c:url>
	   
	   <!-- construct an "update" link with customerId -->
		<c:url var="deleteLink" value="/customerGym/deleteMember">
		<c:param name="customerId" value="${tempCustomer.id}"></c:param>
	   </c:url>
  <tbody>
    <tr>
      <td class="td-sm">${tempCustomer.id}</td>
      <td class="td-sm">${tempCustomer.firstName}</td>
      <td class="td-sm">${tempCustomer.lastName}</td>
      <td class="td-sm">${tempCustomer.dob}</td>      
      <td class="td-sm">${tempCustomer.contactNo}</td>
      <td class="td-sm">${tempCustomer.alternateNo}</td>
      <td class="td-sm">${tempCustomer.gender}</td>
      <td class="td-sm">${tempCustomer.email}</td>
      <td class="td-sm">${tempCustomer.occupation}</td>      
      <td class="td-sm">${tempCustomer.address}</td> 
      <td class="td-sm">${tempCustomer.membership}</td>
      <td class="td-sm">${tempCustomer.amount}</td>
      <td class="td-sm">${tempCustomer.amountStatus}</td>
      <td class="td-sm">${tempCustomer.pendingAmount}</td>
      <td class="td-sm">${tempCustomer.startDate}</td>
      <td class="td-sm">${tempCustomer.endDate}</td>
      <td class="td-sm">${tempCustomer.facility}</td> 
      
      <td> 
      	<!--  Display the update link -->
		<a href="${updateLink}"><i class="fas fa-user-edit"></i></a> |
		<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"><i class="fas fa-trash-alt"></i></a>
	 </td>
      
    </tr>
    
  </tbody>
  </c:forEach>
</table>  
<!-- Add Pagination Controls -->
			
			<!-- Handle "First" and "Prev" links -->
			<c:choose>
				<c:when test="${currentPage == 1}">
					<a href="#" class="disabled">First</a>
					<a href="#" class="disabled">Prev</a>
				</c:when>
				<c:otherwise>
					<c:url var="firstPageLink" value="/customerGym/list">
						<c:param name="pageNumber" value="1" />
					</c:url>		
					<a href="${firstPageLink}">First</a>

					<c:url var="prevPageLink" value="/customerGym/list">
						<c:param name="pageNumber" value="${currentPage - 1}" />
					</c:url>
					<a href="${prevPageLink}">Prev</a>
				</c:otherwise>
			</c:choose>
			
			<!-- Handle Page Number links -->
			<c:forEach begin="1" end="${totalCustomerCount}" step="${pageSize}" varStatus="loop">
				<c:choose>
				
					<c:when test="${loop.count > (currentPage-5) && loop.count <= (currentPage+5) || (currentPage <= 5 && loop.count <= 10) || totalPages <=10}">

						<c:url var="pageLink" value="/customerGym/list">
							<c:param name="pageNumber" value="${loop.count}" />
						</c:url>

						<c:choose>
							<c:when test="${loop.count == currentPage}">
								<a href="${pageLink}" class="selected-page">${loop.count}</a>
							</c:when>
							<c:otherwise>
								<a href="${pageLink}">${loop.count}</a>
							</c:otherwise>
						</c:choose>

					</c:when>
				
				</c:choose>
			</c:forEach>
			
			<!-- Handle "..." if there are more pages -->
			<c:choose>
				<c:when test="${currentPage < (totalPages-5) && (totalPages > 10)}">
					...
				</c:when>
			</c:choose>
			
			<!-- Handle "Next" and "Prev" links -->
			<c:choose>
			
				<c:when test="${currentPage == totalPages}">
					<a href="#" class="disabled">Next</a>
					<a href="#" class="disabled">Last</a>
				</c:when>
				
				<c:otherwise>
					<c:url var="nextPageLink" value="/customerGym/list">
						<c:param name="pageNumber" value="${currentPage + 1}" />
					</c:url>
					<a href="${nextPageLink}">Next</a>

					<c:url var="lastPageLink" value="/customerGym/list">
						<c:param name="pageNumber" value="${totalPages}" />
					</c:url>		
					<a href="${lastPageLink}">Last</a>
				</c:otherwise>
				
			</c:choose>
			
		</div>
	
	</div>

    </div>
    
  </div>
</div>
<!--  <footer class="container-fluid text-center">-->

  
</footer>
	
     
</body>
</html>