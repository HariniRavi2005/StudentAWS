<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
          crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href="#">Student Management System</a>

    <!-- Toggler/collapsible Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/students">Student Management</a>
            </li>
        </ul>
    </div>
</nav>
<br>
<br>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8 col-sm-10 card">
            <div class="card-body">
                <h3 class="text-center mb-4">Add Student</h3>
                <form:form method="POST" modelAttribute="student" action="${pageContext.request.contextPath}/students">
                    <div class="form-group">
                        <label>Student First Name</label>
                        <form:input path="firstName" cssClass="form-control" placeholder="Enter student first name"/>
                    </div>
                    <div class="form-group">
                        <label>Student Last Name</label>
                        <form:input path="lastName" cssClass="form-control" placeholder="Enter student last name"/>
                    </div>
                    <div class="form-group">
                        <label>Student Email</label>
                        <form:input path="email" cssClass="form-control" placeholder="Enter student email"/>
                    </div>
                    <div class="text-center mt-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
