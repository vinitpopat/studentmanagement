<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Student Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <style>
        /* Background gradient and font styling */
        body {
            background: linear-gradient(135deg, #007bff, #6610f2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
        }

        /* Card-like login box */
        .login-container {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
            width: 420px;
            padding: 35px 40px;
            animation: fadeIn 0.8s ease-in-out;
        }

        /* Smooth fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #343a40;
            font-weight: 600;
            margin-bottom: 25px;
        }

        /* Input styling */
        .form-control, .form-select {
            border-radius: 10px;
            padding: 10px;
            border: 1px solid #ced4da;
            transition: all 0.3s ease;
        }

        .form-control:focus, .form-select:focus {
            border-color: #007bff;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.4);
        }

        label {
            font-weight: 500;
            color: #444;
        }

        /* Button styling */
        .btn-primary {
            background: linear-gradient(90deg, #007bff, #6610f2);
            border: none;
            border-radius: 10px;
            font-weight: 600;
            transition: all 0.3s ease;
            padding: 10px;
        }

        .btn-primary:hover {
            transform: scale(1.05);
            background: linear-gradient(90deg, #0056b3, #520dc2);
        }

        /* Subtle focus animation for the box */
        .login-container:hover {
            transform: scale(1.02);
            transition: 0.3s;
        }

        /* Optional: back or signup link */
        .extra-links {
            text-align: center;
            margin-top: 15px;
        }

        .extra-links a {
            color: #007bff;
            text-decoration: none;
            font-weight: 500;
        }

        .extra-links a:hover {
            text-decoration: underline;
            color: #0056b3;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <h2>Login</h2>

        <form action="checkauthr" method="post">
            <div class="mb-3">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" class="form-control" placeholder="Enter your name" required>
            </div>

            <div class="mb-3">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>

            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select id="role" name="role" class="form-select" required>
                    <option value="">-- Select Role --</option>
                    <option value="STUDENT">Student</option>
                    <option value="FACULTY">Faculty</option>
                    <option value="ADMIN">Admin</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary w-100">Login</button>

            <div class="extra-links">
                <a href="signup">Don’t have an account? Sign up</a>
            </div>
        </form>
    </div>
</body>
</html>
