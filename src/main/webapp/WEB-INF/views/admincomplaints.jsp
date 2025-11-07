<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin - Complaints</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="container mt-4">
    <h2>All Complaints</h2>
    <table class="table table-bordered">
        <tr><th>ID</th><th>Subject</th><th>Description</th><th>Student</th><th>Status</th></tr>
        <c:forEach var="complaint" items="${complaints}">
            <tr>
                <td>${comp
                laint.id}</td>
                <td>${complaint.subject}</td>
                <td>${complaint.description}</td>
                <td>${complaint.student.name}</td>
                <td>${complaint.status}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
