<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
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
            background-color: #212529;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            padding: 12px;
            text-decoration: none;
            display: block;
        }
        .sidebar a:hover {
            background-color: #343a40;
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
    <a href="admin.jsp">Dashboard</a>
    <a href="manage-admins.jsp">Manage Admins</a>
    <a href="manage-faculty.jsp">Manage Faculty</a>
    <a href="manage-students.jsp">Manage Students</a>
    <a href="manage-batches.jsp">Manage Batches</a>
    <a href="reports.jsp">Reports</a>
    <a href="settings.jsp">Settings</a>
    <a href="logout">Logout</a>
</div>

<!-- Page Content -->
<div class="content">
    <div class="container-fluid">
        <h2>Welcome, <c:out value="${admin.name}" /></h2>
        <hr>

        <!-- Quick Stats -->
        <div class="row">
            <div class="col-md-3">
                <div class="card text-white bg-primary mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Admins</h5>
                        <p class="card-text"><c:out value="${totalAdmins}" /></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card text-white bg-success mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Faculty</h5>
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

        <!-- Action Links -->
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card border-dark mb-3">
                    <div class="card-body">
                        <h5 class="card-title">User Management</h5>
                        <p class="card-text">Add, update, or remove users.</p>
                        <a href="manage-students.jsp" class="btn btn-dark">Go</a>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card border-dark mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Batch Management</h5>
                        <p class="card-text">Create, update, and assign students to batches.</p>
                        <a href="manage-batches.jsp" class="btn btn-dark">Go</a>
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
