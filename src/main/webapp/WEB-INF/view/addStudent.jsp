<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student Details</title>
<jsp:include page="css.jsp"/>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h2 class="display-5 text-center">Add Student</h2>
  </div>
</div>


<div class="container">


<div class="row justify-content-center">

 
    <div class="col-sm-6 col-md-6">
    
        <div class="card">
        
          <div class="card-body">
          
             <form action="add-student" method="post">
             
                <div class="form-group">
                
                    <label class="form-label">Name</label>
                    <input type="text" name="name" class="form-control" placeholder="Enter Student name" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Age</label>
                    <input type="number" name="age" class="form-control" placeholder="Enter Student age" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Department</label>
                    <input type="text" name="department" class="form-control" placeholder="Enter Student department" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Phone number</label>
                    <input type="tel" name="phonenumber" class="form-control" placeholder="Enter Student phonenumber" required="required">
                
                </div>
                
                 <div class="form-group">
                
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter Student email address" required="required">
                
                </div>
                
                 <div class="form-group">
                
                   <button type="submit" class="btn btn-success">Submit</button>
                
                </div>
             
             </form>
          
          </div>
        
        </div>
    
    </div>


</div>


</div>


</body>
</html>