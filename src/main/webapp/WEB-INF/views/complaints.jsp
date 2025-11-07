<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Complaints</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">

<div class="container mt-4">
    <h2>Complaints List</h2>
    <a href="complaintform" class="btn btn-primary mb-3">Add Complaint</a>

    <table class="table table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Type</th>
            <th>Description</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${complaints}">
            <tr>
                <td>${c.id}</td>
                <td>${c.complaintType}</td>
                <td>${c.description}</td>
                <td>${c.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
