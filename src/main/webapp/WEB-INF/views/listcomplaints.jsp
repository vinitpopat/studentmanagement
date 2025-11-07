<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="[http://java.sun.com/jsp/jstl/core](http://java.sun.com/jsp/jstl/core)" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
    <title>All Complaints</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #666;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background: #f2f2f2;
        }
        .btn {
            display: block;
            width: 200px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

```
<h1>All Complaints</h1>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Roll No</th>
            <th>Complaint ID</th>
            <th>Complaint Type</th>
            <th>Email</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="c" items="${complaints}">
            <tr>
                <td>${c.id}</td>
                <td>${c.full_name}</td>
                <td>${c.roll_no}</td>
                <td>${c.complaint_id}</td>
                <td>${c.complaint_type}</td>
                <td>${c.email}</td>
                <td>${c.description}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<!-- Link to Complaint Form -->
<a href="/complaintform" class="btn">File New Complaint</a>
```

</body>
</html>
