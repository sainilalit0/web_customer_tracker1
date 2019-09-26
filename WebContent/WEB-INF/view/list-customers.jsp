<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<br>
		<!--  Add New Button for add new customer -->
		<input type="button" value="add Customer"
		onclick="window.location.href='showFormForAdd';return false;"
		/>
		<hr>
		
      <table border="1"> 
				<tr>
					<th> First Name</th>
					<th> Last Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Course</th>
					<th>Food</th>
					<th>Action</th>
					
					
					
				</tr>      
				<!--loop over to print our customers  -->
				<c:forEach var="tempCustomer" items="${customers}">
				
				<!-- construct an "update" link with customerId -->
				<c:url var="updateLink" value="/customer/showFormForUpdate">
				<c:param name="customerId" value="${tempCustomer.id}"></c:param>
				</c:url>
				
				<!-- construct an "delete" link with customerId -->
				<c:url var="deleteLink" value="/customer/delete">
				<c:param name="customerId" value="${tempCustomer.id}"></c:param>
				</c:url>
				<tr>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.lastName}</td>					
					<td>${tempCustomer.email}</td>
					<td>${tempCustomer.gender}</td>
					<td>${tempCustomer.course}</td>
					<td>${tempCustomer.food }</td>
					<td>
					<!--  Display the update link -->
					<a href="${updateLink}">Update</a> |
					<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
					</td>
					
					
		</tr>
					
					
					
					
					
				</tr>
				</c:forEach>
      </table>
</body>
</html>