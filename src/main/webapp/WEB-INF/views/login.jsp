<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login - Student Management System</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

  <style>
    html, body {
      height: 100%;
      margin: 0;
      padding: 0;
    }

    body {
      background-image: url('https://images.unsplash.com/photo-1573164574572-cb89e39749b4?auto=format&fit=crop&w=1600&q=80');
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      font-family: 'Poppins', sans-serif;
      color: #fff;
    }

    .overlay {
      position: fixed;
      top: 0; left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.5); /* dim the background image */
      z-index: 0;
    }

    .login-container {
      position: relative;
      z-index: 1;
      margin-top: 100px;
      background: rgba(255, 255, 255, 0.1); /* semi-transparent glass effect */
      backdrop-filter: blur(10px);
      padding: 40px 30px;
      border-radius: 15px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.5);
    }

    .login-container h2 {
      text-align: center;
      margin-bottom: 25px;
      font-weight: 600;
      color: #fff;
    }

    label {
      color: #f1f1f1;
      font-weight: 500;
    }

    .form-control {
      border-radius: 25px;
      padding: 12px 15px;
    }

    .btn-custom {
      width: 100%;
      padding: 12px;
      border-radius: 25px;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      border: none;
      font-weight: 600;
      transition: transform 0.3s ease, background 0.3s ease;
    }

    .btn-custom:hover {
      transform: translateY(-2px);
      background: linear-gradient(135deg, #2575fc, #6a11cb);
    }
  </style>
</head>
<body>
  <div class="overlay"></div> <!-- dim background -->
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-5 login-container">
        <h2>Welcome to Student Management</h2>

        <!-- Success Message -->
        <c:if test="${not empty message}">
          <div class="alert alert-success" role="alert">
            ${message}
          </div>
        </c:if>

        <!-- Error Message -->
        <c:if test="${not empty error}">
          <div class="alert alert-danger" role="alert">
            ${error}
          </div>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="post">
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" name="username" class="form-control" placeholder="Enter username" required>
          </div>
          <div class="form-group mt-3">
            <label for="password">Password</label>
            <input type="password" name="password" class="form-control" placeholder="Enter password" required>
          </div>
          <button type="submit" class="btn btn-custom mt-4">Login</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>
