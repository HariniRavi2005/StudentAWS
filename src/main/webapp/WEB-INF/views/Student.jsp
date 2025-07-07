<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/students">Student Management</a>
            </li>
        </ul>

        <!-- Logout button aligned to the right -->
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/logout">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-4">
    <div class="row">
       <h1 style="font-family: 'Roboto Slab', serif;">List Students</h1>
       
    </div>
    <div class="row">
        <div class="col-lg-3">
            <a href="${pageContext.request.contextPath}/students/new" class="btn btn-primary btn-sm mb-3">Add Student</a>
        </div>
    </div>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>E-mail</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.firstName}</td>
                <td>${student.lastName}</td>
                <td>${student.email}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/students/edit/${student.id}" class="btn btn-primary btn-sm">Update</a>
                    <a href="${pageContext.request.contextPath}/students/delete/${student.id}" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
