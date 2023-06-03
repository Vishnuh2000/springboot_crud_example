<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Details</title>
<jsp:include page="css.jsp"/>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h2 class="display-5 text-center">Update Student</h2>
  </div>
</div>


<div class="container">


<div class="row justify-content-center">

 
    <div class="col-sm-6 col-md-6">
    
        <div class="card">
        
          <div class="card-body">
          
             <form action="/add-student" method="post">
             
                <div class="form-group">
                
                     <input type="hidden" name="id" value="${student.id }">
                
                    <label class="form-label">Name</label>
                    <input type="text" name="name" class="form-control" value="${student.name }">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Age</label>
                    <input type="number" name="age" class="form-control"  value="${student.age }" >
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Department</label>
                    <input type="text" name="department" class="form-control" value="${student.department }">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Phone number</label>
                    <input type="tel" name="phonenumber" class="form-control" value="${student.phonenumber }">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" value="${student.email }">
                
                </div>
                
                 <div class="form-group">
                
                   <button type="submit" class="btn btn-success">Update</button>
                
                </div>
             
             </form>
          
          </div>
        
        </div>
    
    </div>


</div>


</div>


</body>
</html>