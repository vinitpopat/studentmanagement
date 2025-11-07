<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Admin - Student Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <style>
        body {
            background: linear-gradient(135deg, #007bff, #6610f2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
        }

        .form-container {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
            width: 420px;
            padding: 30px 40px;
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #343a40;
            font-weight: 600;
        }

        .form-control {
            border-radius: 10px;
            padding: 10px;
            border: 1px solid #ced4da;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }

        .btn-primary {
            background: linear-gradient(90deg, #007bff, #6610f2);
            border: none;
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            transition: 0.3s;
            font-weight: 600;
        }

        .btn-primary:hover {
            transform: scale(1.05);
            background: linear-gradient(90deg, #0056b3, #520dc2);
        }

        .back-link {
            text-align: center;
            margin-top: 15px;
        }

        .back-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: 500;
            transition: 0.2s;
        }

        .back-link a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Add New Admin</h2>

    <form action="addadmin" method="post">
        <div class="mb-3">
            <label for="fullname" class="form-label">Full Name</label>
            <input type="text" id="fullname" name="name" class="form-control" placeholder="Enter full name" required>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email ID</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Enter email" required>
        </div>

       

        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Enter password" required>
        </div>

        <div class="mb-3">
            <label for="role" class="form-label">Role</label>
            <select id="role" name="role" class="form-control" required>
                <option value="">-- Select Role --</option>
                <option value="ADMIN">ADMIN</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Add Admin</button>

        <div class="back-link">
            <a href="adminpage">← Back to Dashboard</a>
        </div>
    </form>
</div>

</body>
</html>
