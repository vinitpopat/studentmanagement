<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Faculty</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="container mt-5">

    <h2 class="text-center mb-4">List of Faculty</h2>

    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Role</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="faculty" items="${facultyList}">
                <tr>
                    <td>${faculty.name}</td>
                    <td>${faculty.email}</td>
                    <td>${faculty.role}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="text-center mt-4">
        <a href="welcome.jsp" class="btn btn-primary">Back to Home</a>
    </div>

</body>
</html>
