<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Student Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #0d6efd;
        }
        .navbar-brand, .nav-link {
            color: white !important;
        }
        .dashboard-card {
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }
        .dashboard-card:hover {
            transform: scale(1.03);
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="text-center mb-4">Welcome, Admin 👋</h2>
    <div class="row g-4">

        <!-- Add Student -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>Add Student</h5>
                <a href="addstudent" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- View Students -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>List Students</h5>
                <a href="liststudent" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- Add Faculty -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>Add Faculty</h5>
                <a href="addfaculty" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- View Faculties -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>List Faculties</h5>
                <a href="listfaculty" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- Add Batch -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>Add Batch</h5>
                <a href="addbatch" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- List Batch -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>List Batches</h5>
                <a href="listbatch" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- Add Complaint -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>Add Complaint</h5>
                <a href="addcomplaint" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- View Complaints -->
        <div class="col-md-3">
            <div class="card dashboard-card text-center p-3">
                <h5>View Complaints</h5>
                <a href="viewcomplaint" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

    </div>
</div>

<footer class="text-center mt-5 mb-3 text-muted">
    &copy; 2025 Student Management System | Admin Panel
</footer>

</body>
</html>
