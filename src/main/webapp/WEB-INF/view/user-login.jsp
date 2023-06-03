<%@page import="com.springbootcrud.model.User"%>
<%@page import="com.springbootcrud.model.Message"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<jsp:include page="css.jsp"/>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h2 class="display-5 text-center">Login Here</h2>
  </div>
</div>


<div class="container">


<div class="row justify-content-center">

 
    <div class="col-sm-6 col-md-6">
         
         
    
        <div class="card">
        
          <div class="card-body">
          
             <form action="/login-user" method="post">
             
                
                 <div class="form-group">
                
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter Email address" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Enter password" required="required">
                
                </div>
                
                
            
                  <p class="text-danger font-weight-bold" id="error">${message}</p>
            
                
                
                 <div class="form-group">
                
                   <button type="submit" class="btn btn-success">Login</button>
                
                </div>
             
             </form>
          
          </div>
        
        </div>
    
    </div>


</div>


</div>




</body>
</html>