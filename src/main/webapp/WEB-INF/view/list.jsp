<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Student List</title>
<jsp:include page="css.jsp" />
</head>
<body>

	<jsp:include page="navbar.jsp" />
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h2 class="display-4 text-center">All Student</h2>
		</div>
	</div>


	<div class="container">

       <c:choose>
		
		<c:when test="${students.size() !=0 }">
		
		  <table class="table table-striped table-bordered">

			<thead>

				<tr>

					<th>Sr.No</th>
					<th>Name</th>
					<th>Age</th>
					<th>Department</th>
					<th>Phone number</th>
					<th>Email</th>
					<th>Actions</th>

				</tr>

			</thead>

			<tbody>


               

			  	<c:forEach var="stud" items="${students}" varStatus="count">

					<tr>

                        <td>${count.index+1 }</td>
						<td>${stud.name }</td>
						<td>${stud.age }</td>
						<td>${stud.department }</td>
						<td>${stud.phonenumber }</td>
						<td>${stud.email }</td>
						<td><a href="edit-student/${stud.id}" class="btn btn-primary badge">Edit</a> <a
							href="delete-student/${stud.id}" onclick="return confirm('Are you sure')" class="btn btn-danger badge">Delete</a></td>

					</tr>

				</c:forEach>

             

			</tbody>


		</table>
		
		</c:when>
		
		<c:otherwise>
		
		   <div class="alert alert-danger mt-5">
		   
		     <h4 class="text-center">NO STUDENT RECORD FOUND !</h4>
		   
		   </div>
		
		</c:otherwise>
		
      </c:choose>

	</div>


</body>
</html>