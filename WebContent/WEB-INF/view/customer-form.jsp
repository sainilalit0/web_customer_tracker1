<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	.error{color:red}
</style>
</head>
<body>
 <h1>Save Customer</h1>
  <form:form action="saveCustomer" modelAttribute="customer" method="POST">
  <!--  need to associate this data with customerId -->
  <form:hidden path="id"/>
  
  <table bordercolor="green" cellpadding="3" cellspacing="5">
		<tbody>
		<tr>
			<td><label>First Name(*)</label></td>
			<td><form:input path="firstName"/> </td>
			<td><form:errors path="firstName" cssClass="error"></form:errors></td>
		</tr>
		<tr>
			<td><label>Last Name</label></td>
			<td><form:input path="lastName"/></td>
			<td><form:errors path="lastName" cssClass="error"></form:errors></td>
		</tr>
		<tr>
			<td><label>Email</label></td>
			<td><form:input path="email"/></td>
		</tr>
		<tr>
               <td><form:label path = "gender">Gender</form:label></td>
               <td>
                  <form:radiobutton path = "gender" value = "male" label = "Male" />
                  <form:radiobutton path = "gender" value = "female" label = "Female" />
               </td>
            </tr> 
        <tr>
        	<td><form:label path="course">Select Course</form:label></td>   
			<td>
				<form:checkbox path="course" value="Java"/>Java
				<form:checkbox path="course" value="Php"/>Php
				<form:checkbox path="course" value="Python"/>Python
				<form:checkbox path="course" value="Asp"/>Asp
				
			</td>
			<tr>
			<td><form:label path="food">Meals</form:label></td>
			<td>	 
	        <form:checkbox path="food" value="veg"/> Veg 
	        <form:checkbox path="food" value="Non-veg"/> Non-Veg
	        
			</td>
			</tr>
		<tr>
			<td><label></label></td>
			<td><input type="submit" value="save"/></td>
		</tr>
		</tbody>  
  </table>
  </form:form>
  <div style="clear;both;">
  </div>
  <p>
  <a href="${pageContext.request.contextPath}/customer/listCustomers">Back To List</a> 
  </p>
  
		
</body>
</html>