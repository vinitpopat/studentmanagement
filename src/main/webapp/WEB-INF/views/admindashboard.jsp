<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
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
            background-color: #343a40;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            padding: 12px;
            text-decoration: none;
            display: block;
        }
        .sidebar a:hover {
            background-color: #495057;
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

<!-- Sidebar -->
<div class="sidebar">
    <div class="sidebar-header">
        <h4>Admin Panel</h4>
    </div>
    
            <a href="addadmin">Add Admin</a>
            <a href="listadmins">List Admins</a>

         
            <a href="addfac">Add Faculty</a>
            <a href="listfaculty">List Faculties</a>

          
            <a href="addBatch.jsp">Add Batch</a>
            <a href="listBatches.jsp">List Batches</a>
            
           
            <a href="addcomplaints.jsp">Add Complaint</a>
            <a href="viewcomplaints.jsp">View Complaints</a>
            
            
            <a href="/signup">Add Student</a>
            <a href="">List Students</a>
            
            
            <a href="logout">Logout</a>
    
    
</div>

<!-- Page Content -->
<div class="content">
    <div class="container-fluid">
        <h2>Welcome, Admin</h2>
        <hr>

        <!-- Example cards / statistics -->
        <div class="row">
            <div class="col-md-3">
                <div class="card text-white bg-primary mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Total Users</h5>
                        <p class="card-text"><c:out value="${totalUsers}" /></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-white bg-success mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Faculties</h5>
                        <p class="card-text"><c:out value="${totalFaculty}" /></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Students</h5>
                        <p class="card-text"><c:out value="${totalStudents}" /></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-white bg-danger mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Batches</h5>
                        <p class="card-text"><c:out value="${totalBatches}" /></p>
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
