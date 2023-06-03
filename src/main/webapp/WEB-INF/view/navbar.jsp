
<%@page import="com.springbootcrud.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
<!--
a {
	color: white;
}
-->
</style>

<nav class="navbar navbar-dark bg-dark">
	<a class="navbar-brand">Student Management App</a>

	<ul class="nav justify-content-center">

	
       <%
       
           User user = (User) session.getAttribute("user");
       
           if(user!=null){
        	   
        	   %>
        	   
        	   
				<li class="nav-item"><a class="nav-link active"
					href="/add-student">Add Student</a></li>
				<li class="nav-item"><a class="nav-link" href="/student-list">StudentList</a>
				</li>
				
					<a class="btn btn-outline-danger my-2 my-sm-0" href="/logout">Logout</a>
				
		
        	   
        	   
        	   <%
        	   
           }else{
        	   
        	   
        	   %>
        	   
        	   <li class="nav-item"><a class="nav-link" href="/login">Login</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="/register">Register</a>
				</li>
        	   
        	   <% 
        	   
           }
       
       
       %>


	</ul>

</nav>