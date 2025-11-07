<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .sidebar {
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            width: 240px;
            background-color: #0d6efd;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            padding: 12px;
            text-decoration: none;
            display: block;
        }
        .sidebar a:hover {
            background-color: #0b5ed7;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
        }
        .sidebar .sidebar-header {
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="Navbar.jsp" />




<!-- Page Content -->
<div class="content">
    <div class="container-fluid">
        <h2>Welcome, <c:out value="${student.name}" /></h2>
        <hr>

        <!-- Student Info Cards -->
        <div class="row">
            <div class="col-md-4">
                <div class="card border-primary mb-3">
                    <div class="card-body text-primary">
                        <h5 class="card-title">My Profile</h5>
                        <p class="card-text">View or update your personal information.</p>
                        <a href="my-profile.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card border-success mb-3">
                    <div class="card-body text-success">
                        <h5 class="card-title">My Batches</h5>
                        <p class="card-text">See the batches you are enrolled in.</p>
                        <a href="my-batches.jsp" class="btn btn-success">Go</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card border-warning mb-3">
                    <div class="card-body text-warning">
                        <h5 class="card-title">Complaints</h5>
                        <p class="card-text">Submit and track your complaints.</p>
                        <a href="complain-form.jsp" class="btn btn-warning">Go</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
