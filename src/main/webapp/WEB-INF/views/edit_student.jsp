<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Edit Student</h2>
    
    <form:form method="POST" 
               action="${pageContext.request.contextPath}/students/${student.id}" 
               modelAttribute="student">
               
        <!-- ✅ Hidden field for ID -->
        <form:hidden path="id"/>

        <div class="form-group">
            <label>First Name</label>
            <form:input path="firstName" cssClass="form-control" placeholder="Enter first name" />
        </div>
        <div class="form-group">
            <label>Last Name</label>
            <form:input path="lastName" cssClass="form-control" placeholder="Enter last name" />
        </div>
        <div class="form-group">
            <label>Email</label>
            <form:input path="email" cssClass="form-control" placeholder="Enter email" />
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
          <a href="${pageContext.request.contextPath}/students" class="btn btn-secondary">Cancel</a>
    </form:form>
</div>
</body>
</html>
