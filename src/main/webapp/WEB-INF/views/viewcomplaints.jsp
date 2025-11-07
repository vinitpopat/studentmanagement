<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>

<html>
<head>
    <title>View Complaints</title>
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        /* Navigation bar */
        nav {
            background-color: #004aad;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        nav .logo {
            font-size: 22px;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: 0.3s;
        }

        nav ul li a:hover {
            color: #ffcc00;
        }

        /* Page heading */
        h1 {
            text-align: center;
            margin-top: 30px;
            color: #333;
            font-size: 28px;
        }

        /* Table styling */
        table {
            border-collapse: collapse;
            width: 90%;
            margin: 30px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px 15px;
            text-align: center;
        }

        th {
            background-color: #004aad;
            color: white;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f8f8f8;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
                align-items: flex-start;
            }

            table {
                width: 100%;
                font-size: 14px;
            }

            th, td {
                padding: 8px;
            }
        }
    </style>
</head>
<body>

```
<h1>All Complaints</h1>

<table>
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Roll No</th>
        <th>Complaint ID</th>
        <th>Complaint Type</th>
        <th>Email</th>
        <th>Description</th>
    </tr>
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
</table>
```

</body>
</html>

