<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Faculty Dashboard</title>
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
            background-color: #198754;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            padding: 12px;
            text-decoration: none;
            display: block;
        }
        .sidebar a:hover {
            background-color: #146c43;
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
        <h4>Faculty Panel</h4>
    </div>
    <a href="faculty.jsp">Dashboard</a>
    <a href="my-profile.jsp">My Profile</a>
    <a href="my-batches.jsp">My Batches</a>
    <a href="manage-students.jsp">Manage Students</a>
    <a href="complaints.jsp">View Complaints</a>
    <a href="resources.jsp">Upload Resources</a>
    <a href="logout">Logout</a>
</div>

<!-- Page Content -->
<div class="content">
    <div class="container-fluid">
        <h2>Welcome, <c:out value="${faculty.name}" /></h2>
        <hr>

        <!-- Faculty Stats -->
        <div class="row">
            <div class="col-md-4">
                <div class="card text-white bg-primary mb-3">
                    <div class="card-body">
                        <h5 class="card-title">My Batches</h5>
                        <p class="card-text"><c:out value="${totalBatches}" /></p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-white bg-success mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Students</h5>
                        <p class="card-text"><c:out value="${totalStudents}" /></p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Complaints</h5>
                        <p class="card-text"><c:out value="${pendingComplaints}" /></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card border-dark mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Manage Students</h5>
                        <p class="card-text">View and update students in your batches.</p>
                        <a href="manage-students.jsp" class="btn btn-dark">Go</a>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card border-dark mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Upload Resources</h5>
                        <p class="card-text">Upload study materials for your students.</p>
                        <a href="resources.jsp" class="btn btn-dark">Go</a>
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
