<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="container mt-5">

    <h2 class="text-center mb-4">User Signup</h2>

    <!-- ✅ Show success/error messages -->
    <c:if test="${param.success == 'true'}">
        <div class="alert alert-success">Signup successful! You can login now.</div>
    </c:if>
    <c:if test="${param.error == 'true'}">
        <div class="alert alert-danger">Something went wrong. Please try again.</div>
    </c:if>

    <form action="signupuser" method="post" class="w-50 mx-auto border shadow p-4 rounded">
        <!-- Username -->
        <div class="mb-3">
            <label for="username" class="form-label">Name</label>
            <input type="text" id="name" name="name" class="form-control" required>
        </div>

        <!-- Email -->
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>

        <!-- Password -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>

        <!-- Role Selection -->
        <div class="mb-3">
            <label for="role" class="form-label">Role</label>
            <select id="role" name="role" class="form-select" required>
                <option value="STUDENT">Student</option>
                <option value="FACULTY">Faculty</option>
                <option value="ADMIN">Admin</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary w-100">Signup</button>
    </form>

    <div class="mt-3 text-center">
        Already have an account? <a href="/login">Login here</a>
    </div>

</body>
</html>
