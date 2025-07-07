<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Home - Cambridge Student Management</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500;700&display=swap" rel="stylesheet">
  <style>
    html, body {
      height: 100%;
      margin: 0;
      font-family: 'Poppins', sans-serif;
    }
    body {
      background: url('https://images.unsplash.com/photo-1503676260728-1c00da094a0b?auto=format&fit=crop&w=1600&q=80') no-repeat center center fixed;
      background-size: cover;
      color: #fff;
    }
    .overlay {
      background-color: rgba(0, 0, 0, 0.5);
      position: fixed;
      top: 0; left: 0;
      width: 100%; height: 100%;
      z-index: 1;
    }
    .content {
      position: relative;
      z-index: 2;
      text-align: center;
      top: 30%;
    }
    .content h1 {
      font-size: 3rem;
      font-weight: 700;
      margin-bottom: 20px;
    }
    .content p {
      font-size: 1.2rem;
      margin-bottom: 30px;
    }
    .btn-custom {
      background: linear-gradient(135deg, #4facfe, #00f2fe);
      border: none;
      padding: 12px 30px;
      border-radius: 50px;
      font-size: 1.1rem;
      color: #fff;
      transition: transform 0.2s ease-in-out;
      margin: 10px;
    }
    .btn-custom:hover {
      transform: scale(1.05);
      background: linear-gradient(135deg, #00f2fe, #4facfe);
    }
  </style>
</head>
<body>
  <div class="overlay"></div>
  <div class="content">
    <h1>Welcome to Cambridge Student Management</h1>
    <p>Manage all your student information efficiently.</p>
    <a href="${pageContext.request.contextPath}/students" class="btn btn-custom">View Student List</a>
    <a href="${pageContext.request.contextPath}/logout" class="btn btn-custom">Logout</a>
  </div>
</body>
</html>
